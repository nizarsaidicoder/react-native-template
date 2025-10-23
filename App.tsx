import { TabNavigator, DrawerNavigator } from "@/navigation";
import { NavigationContainer } from "@react-navigation/native";
export default function App() {
  return (
    <NavigationContainer>
      <TabNavigator />
      {/* <DrawerNavigator /> */}
    </NavigationContainer>
  );
}
