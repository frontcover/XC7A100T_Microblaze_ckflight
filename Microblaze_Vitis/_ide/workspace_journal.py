# 2025-11-30T09:46:28.172678529
import vitis

client = vitis.create_client()
client.set_workspace(path="Microblaze_Vitis")

platform = client.get_component(name="Microblaze")
status = platform.build()

status = platform.build()

comp = client.get_component(name="Microblaze_Peripherals")
comp.build()

vitis.dispose()

