import { ReactNode } from "react";
import { Modal, Pressable, GestureResponderEvent } from "react-native";
import styles from "./ModalWrapper.styles";
interface ModalWrapperProps {
  visible: boolean;
  onClose: () => void;
  children: ReactNode;
}

export default function ModalWrapper({
  visible,
  onClose,
  children,
}: ModalWrapperProps) {
  return (
    <Modal
      visible={visible}
      transparent
      onRequestClose={onClose}>
      <Pressable
        style={styles.overlay}
        onPress={onClose}>
        <Pressable
          style={styles.content}
          onPress={(e: GestureResponderEvent) => e.stopPropagation()}>
          {children}
        </Pressable>
      </Pressable>
    </Modal>
  );
}
