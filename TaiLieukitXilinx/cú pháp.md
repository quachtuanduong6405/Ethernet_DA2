# PetaLinux Command Reference — AX7020 Project

> PetaLinux 2022.2 | Ubuntu 22.04.5 | VMware Workstation
> Nhớ `source ~/petalinux_2022.2/settings.sh` mỗi khi mở terminal mới trước khi dùng bất kỳ lệnh nào bên dưới.

Cách tắt auto source petalinux:
grep -n "petalinux" ~/.bashrc ~/.profile ~/.bash_profile 2>/dev/null. Giải thích: lệnh grep tìm trong các file khởi tạo shell (.bashrc là file chạy mỗi lần mở terminal mới) xem dòng nào đang gọi settings.sh của PetaLinux. Kết quả sẽ dạng: `source /home/an/petalinux_2022.2/settings.sh` kèm theo số dòng.

Hiện tại đã tắt petalinux trên terminal, để bật lại:
nano ~/.bashrc, nano là text editor dòng lệnh, tìm dòng source ~/petalinux_2022.2/settings.sh và bỏ dấu # đứng trước nó sau đó Ctrl O để lưu và Ctrl x để thoát
---

## 1. Tổng quan 7 lệnh chính

| Lệnh | Vai trò | Dùng khi nào |
|---|---|---|
| `petalinux-create` | Tạo project / app / module / driver mới | Bắt đầu project, thêm app/driver |
| `petalinux-config` | Cấu hình project (hardware, kernel, rootfs, bootloader) | Sau khi có `.xsa`, hoặc đổi cấu hình |
| `petalinux-build` | Build toàn bộ hoặc từng phần | Sau mỗi lần sửa code/config |
| `petalinux-package` | Đóng gói output (BOOT.BIN, SD image, prebuilt) | Trước khi deploy lên board |
| `petalinux-boot` | Boot thử qua QEMU hoặc JTAG | Test nhanh không cần flash SD |
| `petalinux-util` | Tiện ích phụ trợ (gdb, jtag-logbuf, find-xsa) | Debug |
| `petalinux-upgrade` | Nâng cấp BSP/rootfs từ nguồn khác | Ít dùng, chỉ khi cần đổi BSP gốc |

---

## 2. `petalinux-create` — Tạo mới

### 2.1 Tạo project

```bash
petalinux-create -t project -n <tên_project> --template zynq
```

| Flag | Ý nghĩa |
|---|---|
| `-t project` | Loại object cần tạo là "project" |
| `-n <tên>` | Tên project (thư mục sẽ tạo ra) |
| `--template zynq` | Kiến trúc — dùng `zynq` cho AX7020 (Zynq-7000). Các lựa chọn khác: `zynqMP`, `versal`, `microblaze` |

Tạo project từ BSP có sẵn (file `.bsp`, nếu có ai cho sẵn BSP đóng gói):
```bash
petalinux-create -t project -s <path_to_bsp_file.bsp>
```

### 2.2 Tạo app (chương trình userspace)

```bash
cd <project>
petalinux-create -t apps --template c --name <tên_app> --enable
```

| Flag | Ý nghĩa |
|---|---|
| `--template c` | Ngôn ngữ mẫu — `c`, `c++`, `autotools`, `install` |
| `--name <tên>` | Tên app |
| `--enable` | Tự động thêm vào rootfs config luôn (khỏi vào `rootfs-config` bật tay) |

### 2.3 Tạo kernel module / driver (cái m cần nhất cho project)

```bash
cd <project>
petalinux-create -t modules --name <tên_driver> --enable
```

Tạo xong sẽ có thư mục:
```
project-spec/meta-user/recipes-modules/<tên_driver>/
├── files/
│   └── <tên_driver>.c      ← sửa code driver ở đây
└── <tên_driver>.bb          ← recipe, thường không cần sửa
```

### 2.4 Tạo layer riêng (nâng cao, ít cần lúc đầu)

```bash
petalinux-create -t apps -n <tên> --template install
```

---

## 3. `petalinux-config` — Cấu hình

### 3.1 Nạp hardware description (bước bắt buộc đầu tiên, cần `.xsa`)

```bash
petalinux-config --get-hw-description=/đường/dẫn/tới/file.xsa
```
hoặc trỏ tới cả thư mục chứa `.xsa`:
```bash
petalinux-config --get-hw-description=/đường/dẫn/thư_mục/
```
Lệnh này mở luôn menuconfig sau khi đọc `.xsa` — điều hướng bằng phím mũi tên, Enter để vào mục, Space để tick chọn, `Esc Esc` để thoát (sẽ hỏi Save).

### 3.2 Mở lại menuconfig chung (không đổi hardware, chỉ sửa config khác)

```bash
petalinux-config
```

### 3.3 Cấu hình kernel

```bash
petalinux-config -c kernel
```
Menuconfig kiểu Linux kernel truyền thống — dùng để bật/tắt driver, chọn module built-in hay loadable (`<*>` = built-in, `<M>` = module, `< >` = tắt).

### 3.4 Cấu hình rootfs (chọn package)

```bash
petalinux-config -c rootfs
```
Chọn package sẽ có trong rootfs cuối (BusyBox, Python, SSH, app tự tạo...). App tạo bằng `petalinux-create -t apps --enable` sẽ tự động được tick sẵn ở đây.

### 3.5 Cấu hình U-Boot

```bash
petalinux-config -c u-boot
```

### 3.6 Cấu hình device tree trực tiếp (thường sửa file, ít dùng lệnh này)

Thực tế hay sửa trực tiếp file thay vì qua lệnh:
```
project-spec/meta-user/recipes-bsp/device-tree/files/system-user.dtsi
```

---

## 4. `petalinux-build` — Build

### 4.1 Build toàn bộ

```bash
petalinux-build
```
Build hết: FSBL, U-Boot, kernel, rootfs, device tree. Lần đầu rất lâu (30 phút – vài tiếng tùy máy), các lần sau chỉ build lại phần đổi (incremental).

### 4.2 Build riêng 1 phần (nhanh hơn nhiều khi chỉ sửa 1 chỗ)

```bash
petalinux-build -c kernel        # chỉ build lại kernel
petalinux-build -c rootfs        # chỉ build lại rootfs
petalinux-build -c u-boot        # chỉ build lại U-Boot
petalinux-build -c <tên_driver>  # chỉ build lại module/driver cụ thể
petalinux-build -c <tên_app>     # chỉ build lại app cụ thể
```

### 4.3 Build sạch từ đầu (khi nghi ngờ cache lỗi)

```bash
petalinux-build -x mrproper      # xoá sạch build/, build lại từ đầu hoàn toàn
petalinux-build -x distclean     # xoá cả downloads, sạch nhất, build lại lâu nhất
```

### 4.4 Build verbose (xem log chi tiết khi debug lỗi build)

```bash
petalinux-build -v
```

---

## 5. `petalinux-package` — Đóng gói

### 5.1 Đóng gói BOOT.BIN (FSBL + bitstream + U-Boot)

```bash
petalinux-package --boot --fsbl --fpga --u-boot
```

| Flag | Nội dung đưa vào BOOT.BIN |
|---|---|
| `--fsbl` | First Stage Boot Loader |
| `--fpga` | Bitstream cho PL (file `.bit`) |
| `--u-boot` | U-Boot image |
| `--force` | Ghi đè nếu `BOOT.BIN` đã tồn tại |

### 5.2 Đóng gói SD card image hoàn chỉnh

```bash
petalinux-package --wic --images-dir images/linux/ --bootfiles "BOOT.BIN,boot.scr,Image,rootfs.cpio.gz.u-boot,system.dtb"
```
Ra file `.wic` — ghi trực tiếp ra SD card bằng `dd` hoặc balenaEtcher.

### 5.3 Đóng gói prebuilt (chia sẻ project đã build cho người khác dùng lại)

```bash
petalinux-package --prebuilt
```

### 5.4 Đóng gói sysroot (để dùng cross-compile app riêng bên ngoài PetaLinux)

```bash
petalinux-package --sysroot
```

---

## 6. `petalinux-boot` — Boot thử

### 6.1 Boot qua QEMU (không cần board thật)

```bash
petalinux-boot --qemu --kernel      # boot kernel image.ub
petalinux-boot --qemu --prebuilt 3  # boot dùng prebuilt image mức 3 (kernel+rootfs+dtb)
```

### 6.2 Boot board thật qua JTAG

```bash
petalinux-boot --jtag --kernel
petalinux-boot --jtag --u-boot
```
Cần cắm cáp JTAG vào board + cài Vivado Lab Tools hoặc Vitis để có driver JTAG.

---

## 7. `petalinux-util` — Tiện ích

```bash
petalinux-util --find-xsa-bitstream <file.xsa>   # tìm bitstream trong file .xsa
petalinux-util --jtag-logbuf                      # xem log kernel qua JTAG
petalinux-util --gdb                              # debug wrapper qua gdb
```

---

## 8. Quy trình chuẩn — thứ tự lệnh chạy từ đầu đến cuối

```bash
# 1. Tạo project
petalinux-create -t project -n ax7020_calculator --template zynq
cd ax7020_calculator

# 2. Nạp hardware description
petalinux-config --get-hw-description=/path/to/design.xsa

# 3. (Tuỳ chọn) chỉnh kernel/rootfs nếu cần thêm package/driver
petalinux-config -c kernel
petalinux-config -c rootfs

# 4. Tạo driver cho IP
petalinux-create -t modules --name calc_driver --enable
# → sửa code trong project-spec/meta-user/recipes-modules/calc_driver/files/calc_driver.c

# 5. Sửa device tree — thêm node cho IP
# → sửa project-spec/meta-user/recipes-bsp/device-tree/files/system-user.dtsi

# 6. Build toàn bộ
petalinux-build

# 7. Test nhanh qua QEMU (nếu muốn, không bắt buộc với custom IP thật)
petalinux-boot --qemu --kernel

# 8. Đóng gói để deploy lên board thật
petalinux-package --boot --fsbl --fpga --u-boot --force
petalinux-package --wic --images-dir images/linux/

# 9. Ghi ra SD card, cắm vào board, boot thật, test qua UART/SSH
```

---

## 9. Sau khi sửa code — build lại phần nào?

| Sửa gì | Chạy lại lệnh gì |
|---|---|
| Sửa `.c` của driver | `petalinux-build -c <tên_driver>` |
| Sửa device tree (`system-user.dtsi`) | `petalinux-build -c device-tree` rồi `petalinux-build` |
| Đổi hardware `.xsa` mới | `petalinux-config --get-hw-description=<xsa mới>` rồi `petalinux-build` |
| Sửa kernel config (bật driver mới) | `petalinux-config -c kernel` rồi `petalinux-build -c kernel` |
| Thêm package vào rootfs | `petalinux-config -c rootfs` rồi `petalinux-build -c rootfs` |
| Đổi gì cũng được, build sạch | `petalinux-build -x mrproper` rồi `petalinux-build` |

---

## 10. Lỗi hay gặp — tra nhanh

| Thông báo lỗi | Nguyên nhân | Cách xử lý |
|---|---|---|
| `No XSA is found in .../hw-description` | Chưa chạy `--get-hw-description` | Chạy `petalinux-config --get-hw-description=<file.xsa>` trước |
| `You are not inside a PetaLinux project` | Đang đứng ngoài thư mục project | `cd` vào đúng thư mục project rồi chạy lại |
| `WARNING: This is not a supported OS` | Combo Ubuntu/PetaLinux ngoài list support chính thức | Bỏ qua nếu build vẫn qua, chỉ là cảnh báo |
| Build lỗi giữa chừng không rõ nguyên nhân | Cache hỏng | `petalinux-build -x mrproper` rồi build lại |
| `dmesg` không thấy driver `probe()` chạy | Sai `compatible` string giữa device tree và driver | Kiểm tra khớp tuyệt đối từng ký tự |

---

tạo prj: petalinux-create --type project --template zynq --name haha

bỏ file .xsa vô Linux: petalinux-config --get-hw-description=/đường dẫn file .xsa

cấu hình kernel: petalinux-config -c kernel

cấu hình u-boot: petalinux-config -c u-boot

cấu hình root: petalinux-config -c rootfs

build: petalinux-build

đóng gói images: petalinux-package --boot --fsbl --fpga --u-boot --force
Phải cd vào images/Linux mới dùng lệnh ni: petalinux-package --boot --fsbl zynqmp_fsbl.elf --fpga design_1_wrapper.bit --u-boot

file zynqmp_fsbl.elf và design_1_wrapper.bit ở trong images/linux

xóa các file trong phân vùng root(ext4): sudo rm -rf /media/an/root/* /media/an/root/.[!.]*

kiểm tra lại root: ls -la /media/an/root

chuyển file rootfs.tar.gz vào phân vùng root(ext4): 
sudo tar -xzf ~/Desktop/ttnt/images/linux/rootfs.tar.gz -C /media/an/root/

sau khi chuyển xong thì nhập sync rồi boot lên kit

lấy ip của máy ảo: ip a

xóa server máy ảo: rm -rf ~/.vscode-server

kiểm tra dung lượng máy ảo: df -h

cài ssh server:
lấy địa chỉ ip mạng: sudo dhclient ens33 

crtl c để thoát lệnh đang chạy

Khởi động lại dịch vụ mạng của VMware: win + R -> services.msc -> tìm VMware DHCP service, VMware NAT service -> restart -> máy ảo: sudo reboot

Đã boot lên kit được: tk: root, mk: 5
nếu nhập mật khẩu sai hoặc không nhớ, reset thẳng qua U-Boot:
Bấm nút reset trên board, Ngay khi thấy dòng đếm ngược kiểu Hit any key to stop autoboot: 3 2 1 → bấm ngay 1 phím bất kỳ (nhanh tay, chỉ có vài giây) → vào được prompt Zynq>. 
Gõ: 
setenv bootargs 'console=ttyPS0,115200 root=/dev/mmcblk0p2 rw rootwait init=/bin/sh' :ghi đè biến môi trường bootargs — thêm init=/bin/sh để kernel, thay vì chạy tiến trình init/login bình thường, nhảy thẳng vào 1 shell gốc, bỏ qua bước hỏi mật khẩu hoàn toàn.
boot :khởi động lại với bootargs vừa sửa.

Hệ thống boot vào thẳng shell (không hỏi login), thấy dấu nhắc # hoặc / #. Gõ:
    mount -o remount,rw /
    passwd root
Nhập mật khẩu mới 2 lần:
    sync
    reboot -f

Tìm toàn bộ file SystemVerilog/Verilog trong thư mục hiện tại:
find . \( -name "*.sv" -o -name "*.v" -o -name "*.vh" \) -type f
Tìm với phân vùng rộng hơn:
find /home/an -type f \( -name "*.sv" -o -name "*.v" \) 2>/dev/null | grep -Ei "gemm|axi_lite|axi-lite"
Tìm đúng file GEMM:
find ~/Desktop/ttnt -type f \( -name "*.sv" -o -name "*.v" \) | grep -i gemm
Tìm theo tên IP:
grep -Rni "gemm2x2_axi_lite" /home/an 2>/dev/null | head -50

find /sys -iname "*gemm2x2*" -type d 2>/dev/null :find /sys tìm kiếm trong toàn bộ cây thư mục ảo /sys (đây là nơi kernel Linux "phơi bày" thông tin về mọi thiết bị phần cứng nó quản lý, bao gồm cả driver GEMM mày vừa probe được). Cờ -iname "*gemm2x2*" nghĩa là tìm tên có chứa chữ gemm2x2 (không phân biệt hoa/thường — chữ i trong -iname). Cờ -type d giới hạn chỉ tìm thư mục (không tìm file lẻ), vì cái mình cần là thư mục chứa toàn bộ 9 file sysfs của driver. Đoạn 2>/dev/null ở cuối là "ném bỏ" các thông báo lỗi (ví dụ "Permission denied" khi find cố mở vài thư mục hệ thống không có quyền đọc) để màn hình không bị rối, chỉ hiện đúng kết quả cần.

/sys/devices/soc0/amba_pl/43c00000.gemm2x2_axi_lite_bd

root@ttnt:~# find /sys -iname "*gemm2x2*" -type d 2>/dev/null                            /sys/devices/soc0/amba_pl/43c00000.gemm2x2_axi_lite_bd
/sys/firmware/devicetree/base/amba_pl/gemm2x2_axi_lite_bd@43c00000
/sys/bus/platform/drivers/gemm2x2-axi
Giải thích 3 dòng ra được:
Dòng 1 (/sys/devices/soc0/amba_pl/...) — đây là thư mục thiết bị thật, chứa các file thuộc tính (control, status, matrix_a...) mà driver tạo ra. Đây là cái mình cần.
Dòng 2 (/sys/firmware/devicetree/base/...) — đây chỉ là bản sao "thô" của node Device Tree gốc (thông tin phần cứng do kernel expose ra để tham khảo), không chứa file điều khiển nào cả.
Dòng 3 (/sys/bus/platform/drivers/gemm2x2-axi) — đây là thư mục đại diện cho driver (không phải thiết bị), dùng để kernel quản lý việc gắn driver vào thiết bị nào, cũng không có file thao tác.

cd /sys/devices/soc0/amba_pl/43c00000.gemm2x2_axi_lite_bd

ls: liệt kê xem có đủ 9 file control status mode matrix_a matrix_b result_row0 result_row1 id_version compute không.

chạy phép tính thật: 
cat id_version :đọc thanh ghi định danh cố định trước, để chắc chắn 1 lần nữa đang giao tiếp đúng với IP GEMM (kỳ vọng ra 0x47564d32, giống hệt số đã thấy trong dmesg lúc probe).

echo 0 > mode :ghi giá trị 0 vào thanh ghi MODE — theo bảng thanh ghi bạn m cung cấp, bit0=0 nghĩa là dùng định dạng E4M3 (không phải E5M2), bit1=0 nghĩa là tắt SR (stochastic rounding). Đúng chế độ khớp với bộ dữ liệu demo.

echo 0x48444038 > matrix_a
echo 0x504e4c4a > matrix_b đọc 2 thanh ghi kết quả sau khi compute đã chạy xong. Kỳ vọng ra 0x4d804cc0 và 0x52405160.






Format lại sd card thành 2 phân vùng boot và rooft:
lsblk: liệt kê mọi ổ đĩa đang gắn vào máy
sudo umount /dev/sdX1 /dev/sdX2 2>/dev/null :hủy mount các phân vùng cũ (nếu có) trên thẻ, để có thể ghi lại từ đầu mà không xung đột. 2>/dev/null chỉ để giấu bớt thông báo lỗi nếu phân vùng đó chưa từng mount (không có gì đáng lo nếu thấy dòng lỗi vô hại).

sudo fdisk /dev/sdX :mở công cụ fdisk ở chế độ tương tác để tạo phân vùng — sau lệnh này terminal đổi sang dấu nhắc Command (m for help):, gõ tiếp các lệnh con bên trong nó (không phải gõ ngoài bash nữa)
Bên trong fdisk, gõ lần lượt (Enter sau mỗi dòng):
o : tạo bảng phân vùng MBR mới, xóa sạch layout cũ trên thẻ.
n : Enter liên tiếp cho các câu hỏi mặc định (Partition type → Enter chọn p primary, Partition number → Enter chọn 1, First sector → Enter chọn mặc định), tới câu Last sector thì gõ: +500M
n = tạo phân vùng mới. Cỡ +500M nghĩa là phân vùng thứ 1 (boot) rộng 500MB — đủ chứa BOOT.BIN, boot.scr, uImage (các file này chỉ vài chục MB tổng cộng).
t
c 
t = đổi kiểu (type) của phân vùng vừa tạo, c = mã kiểu W95 FAT32 (LBA) — bắt buộc phải đúng kiểu này thì Boot ROM của Zynq mới nhận diện được phân vùng boot.
n : rồi Enter liên tiếp hết (chọn p, số 2, sector đầu mặc định, sector cuối cũng Enter mặc định để lấy hết dung lượng còn lại của thẻ).
Giải thích: tạo phân vùng thứ 2 (rootfs), chiếm toàn bộ phần còn lại của thẻ — không cần đổi kiểu vì mặc định fdisk đã để Linux (0x83), đúng ý muốn.
w
w = write, ghi thật bảng phân vùng vừa tạo xuống thẻ và thoát fdisk. Trước lệnh w này, mọi thứ chỉ nằm trong bộ nhớ tạm, chưa ghi thật — nếu gõ nhầm, gõ q để thoát không lưu, làm lại từ đầu.
Định dạng (format) từng phân vùng
sudo mkfs.vfat -F 32 -n boot /dev/sdX1 :định dạng phân vùng 1 thành FAT32 (-F 32), đặt nhãn tên boot (-n boot, chỉ để dễ nhận diện, không bắt buộc)
sudo mkfs.ext4 -L root /dev/sdX2 : định dạng phân vùng 2 thành ext4 (hệ thống file chuẩn của Linux), đặt nhãn root.

