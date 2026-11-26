# 2026-10-22T16:06:10.415988600
import vitis

client = vitis.create_client()
client.set_workspace(path="DA2_Vitis_Lab")

platform = client.create_platform_component(name = "da2_final_platform",hw_design = "$COMPONENT_LOCATION/../../da2_fake_alert/xsa/da2_final_baseline_v1.xsa",os = "standalone",cpu = "ps7_cortexa9_0",domain_name = "standalone_ps7_cortexa9_0",compiler = "gcc")

platform = client.get_component(name="da2_final_platform")
status = platform.build()

vitis.dispose()

