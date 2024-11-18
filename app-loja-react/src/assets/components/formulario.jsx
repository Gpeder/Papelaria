import React from 'react';
import { TextInput, StyleSheet } from 'react-native';

const CustomTextFormField = ({ label, keyboardType = 'default' }) => {
  return (
    <TextInput
      style={styles.input}
      placeholder={label}
      keyboardType={keyboardType}
      editable={false} 
    />
  );
};

const styles = StyleSheet.create({
  input: {
    height: 50,
    borderColor: '#007BFF',
    borderWidth: 1,
    borderRadius: 8,
    paddingLeft: 10,
    marginBottom: 16,
  },
});

export default CustomTextFormField;
