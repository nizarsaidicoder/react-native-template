import { createBottomTabNavigator } from "@react-navigation/bottom-tabs";
import { Screen1, Screen2, Screen3 } from "@/screens";

const Tab = createBottomTabNavigator();
export default function TabNavigator() {
  return (
    <Tab.Navigator>
      <Tab.Screen
        name="Screen1"
        component={Screen1}
      />
      <Tab.Screen
        name="Screen2"
        component={Screen2}
      />

      <Tab.Screen
        name="Screen3"
        component={Screen3}
      />
    </Tab.Navigator>
  );
}
