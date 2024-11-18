import React, { useState } from 'react';
import { View, TextInput, Text, TouchableOpacity, StyleSheet } from 'react-native';
import { useNavigation } from '@react-navigation/native';

const CustomTextField = ({ labelText, keyboardType, obscureText = false }) => {
  return (
    <TextInput
      style={styles.input}
      placeholder={labelText}
      keyboardType={keyboardType}
      secureTextEntry={obscureText}
    />
  );
};

const Cform = () => {
  const navigation = useNavigation();

  return (
    <View style={styles.container}>
      <CustomTextField labelText="Email" keyboardType="email-address" />
      <View style={styles.space} />
      <CustomTextField labelText="Sua Senha" keyboardType="numeric" obscureText={true} />
      <View style={styles.space} />
      <TouchableOpacity
        style={styles.primaryButton}
        onPress={() => navigation.navigate('RootPage')}
      >
        <Text style={styles.buttonText}>Entrar</Text>
      </TouchableOpacity>
      <View style={styles.space} />
      <TouchableOpacity
        style={styles.secondaryButton}
        onPress={() => navigation.navigate('Cadastro')}
      >
        <Text style={styles.buttonText}>Cadastrar</Text>
      </TouchableOpacity>
    </View>
  );
};

const styles = StyleSheet.create({
  container: {
    padding: 16,
  },
  input: {
    height: 50,
    borderColor: '#007BFF',
    borderWidth: 1,
    borderRadius: 8,
    paddingLeft: 10,
    marginBottom: 16,
  },
  space: {
    height: 16,
  },
  primaryButton: {
    backgroundColor: '#007BFF',
    padding: 15,
    borderRadius: 8,
    alignItems: 'center',
  },
  secondaryButton: {
    backgroundColor: '#6C757D',
    padding: 15,
    borderRadius: 8,
    alignItems: 'center',
  },
  buttonText: {
    color: '#FFF',
    fontSize: 16,
  },
});

export default Cform;
