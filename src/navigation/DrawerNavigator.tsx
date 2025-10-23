import { createDrawerNavigator } from "@react-navigation/drawer";
import { Screen1, Screen2, Screen3 } from "@/screens";

const Drawer = createDrawerNavigator();
export default function DrawerNavigator() {
  return (
    <Drawer.Navigator>
      <Drawer.Screen
        name="Screen1"
        component={Screen1}
      />
      <Drawer.Screen
        name="Screen2"
        component={Screen2}
      />

      <Drawer.Screen
        name="Screen3"
        component={Screen3}
      />
    </Drawer.Navigator>
  );
}
