# 2026-10-23T10:48:30.888283400
import vitis

client = vitis.create_client()
client.set_workspace(path="DA2_Vitis_Lab")

platform = client.create_platform_component(name = "da2_final_platform_ttc",hw_design = "$COMPONENT_LOCATION/../../da2_fake_alert/xsa/da2_final_baseline_v2_ttc.xsa",os = "standalone",cpu = "ps7_cortexa9_0",domain_name = "standalone_ps7_cortexa9_0",compiler = "gcc")

comp = client.create_app_component(name="m3_lwip_echo",platform = "$COMPONENT_LOCATION/../da2_final_platform_ttc/export/da2_final_platform_ttc/da2_final_platform_ttc.xpfm",domain = "standalone_ps7_cortexa9_0",template = "lwip_echo_server")

platform = client.get_component(name="da2_final_platform_ttc")
domain = platform.get_domain(name="standalone_ps7_cortexa9_0")

status = domain.set_lib(lib_name="lwip220", path="D:\AMDDesignTools\2025.2\Vitis\data\embeddedsw\ThirdParty\sw_services\lwip220_v1_3")

status = domain.set_config(option = "lib", param = "lwip220_dhcp", value = "true", lib_name="lwip220")

status = domain.set_config(option = "lib", param = "lwip220_lwip_dhcp_does_acd_check", value = "true", lib_name="lwip220")

status = domain.set_config(option = "lib", param = "lwip220_pbuf_pool_size", value = "2048", lib_name="lwip220")

status = domain.set_config(option = "lib", param = "XILTIMER_en_interval_timer", value = "true", lib_name="xiltimer")

status = domain.set_config(option = "lib", param = "XILTIMER_tick_timer", value = "ps7_ttc_0", lib_name="xiltimer")

status = platform.build()

comp = client.create_app_component(name="m3_lwip_echo",platform = "$COMPONENT_LOCATION/../da2_final_platform_ttc/export/da2_final_platform_ttc/da2_final_platform_ttc.xpfm",domain = "standalone_ps7_cortexa9_0",template = "lwip_echo_server")

comp = client.get_component(name="m3_lwip_echo")
comp.build()

vitis.dispose()

