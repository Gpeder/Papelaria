import React from 'react';
import { View, Text, Image, TextInput, TouchableOpacity, StyleSheet } from 'react-native';

const CustomAppBar = () => (
  <View style={styles.appBar}>
    <Text style={styles.appBarText}>App Loja</Text>
  </View>
);

const CustomTextFormField = ({ label }) => (
  <View style={styles.inputContainer}>
    <Text style={styles.inputLabel}>{label}</Text>
    <TextInput style={styles.input} />
  </View>
);

const PrimaryButton = ({ onPressed, text }) => (
  <TouchableOpacity style={styles.button} onPress={onPressed}>
    <Text style={styles.buttonText}>{text}</Text>
  </TouchableOpacity>
);

const Profile = () => (
  <View style={styles.container}>
    <CustomAppBar />
    <View style={styles.avatarContainer}>
      <Image
        source={require('lib/assets/images/avatar.jpg')}
        style={styles.avatar}
      />
    </View>
    <View style={styles.formContainer}>
      <CustomTextFormField label="Nome" />
      <CustomTextFormField label="Email" />
      <CustomTextFormField label="Telefone" />
      <CustomTextFormField label="Endereço" />
      <PrimaryButton onPressed={() => {}} text="Salvar" />
    </View>
  </View>
);

const styles = StyleSheet.create({
  container: {
    flex: 1,
    padding: 20,
    alignItems: 'center',
  },
  appBar: {
    padding: 10,
    backgroundColor: '#333',
    width: '100%',
    alignItems: 'center',
  },
  appBarText: {
    color: '#fff',
    fontSize: 20,
  },
  avatarContainer: {
    marginVertical: 20,
  },
  avatar: {
    width: 140,
    height: 140,
    borderRadius: 70,
  },
  formContainer: {
    width: '100%',
    paddingHorizontal: 20,
  },
  inputContainer: {
    width: '100%',
    marginBottom: 16,
  },
  inputLabel: {
    fontSize: 16,
    marginBottom: 8,
  },
  input: {
    borderWidth: 1,
    borderColor: '#ccc',
    borderRadius: 8,
    padding: 10,
    fontSize: 16,
  },
  button: {
    backgroundColor: '#007bff',
    paddingVertical: 12,
    borderRadius: 8,
    alignItems: 'center',
    marginTop: 16,
  },
  buttonText: {
    color: '#fff',
    fontSize: 16,
  },
});

export default Profile;
