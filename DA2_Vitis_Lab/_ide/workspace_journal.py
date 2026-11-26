# 2026-10-23T15:01:44.328376200
import vitis

client = vitis.create_client()
client.set_workspace(path="DA2_Vitis_Lab")

comp = client.get_component(name="m3_lwip_echo")
comp.build()

vitis.dispose()

