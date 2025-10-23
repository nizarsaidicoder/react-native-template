import { Text, TouchableOpacity, View } from "react-native";
import { useState } from "react";
import { ModalWrapper } from "@/components/ui";

export default function Screen1() {
  const [isOpen, setIsOpen] = useState(false);

  return (
    <View>
      <Text>Screen 1</Text>
      <TouchableOpacity onPress={() => setIsOpen(true)}>
        <Text>Open Modal</Text>
      </TouchableOpacity>

      <ModalWrapper
        visible={isOpen}
        onClose={() => setIsOpen(false)}>
        <Text>I'm a modal</Text>
      </ModalWrapper>
    </View>
  );
}
