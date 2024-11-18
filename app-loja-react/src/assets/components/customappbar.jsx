import React from 'react';
import { View, Text, TextInput, TouchableOpacity, Icon } from 'react-native';
import { useNavigation } from '@react-navigation/native';

const CustomAppBar = () => {
  const navigation = useNavigation();

  return (
    <View style={{ paddingTop: 16, paddingLeft: 16, paddingRight: 16, flexDirection: 'row', justifyContent: 'center' }}>
      <View
        style={{
          width: 320,
          height: 60,
          padding: 10,
          borderRadius: 50,
          borderWidth: 2,
          borderColor: '#007BFF',
          backgroundColor: '#FFF',
          flexDirection: 'row',
          justifyContent: 'center',
          alignItems: 'center',
        }}
      >
        <Text style={{ fontSize: 20 }}>Busca</Text>
        <TouchableOpacity>
          <Icon name="search" size={20} color="#007BFF" />
        </TouchableOpacity>
      </View>
      <TouchableOpacity onPress={() => navigation.navigate('Cart')}>
        <Icon name="shopping-cart" size={40} />
      </TouchableOpacity>
    </View>
  );
};

const CustomAppBarCart = () => {
  const navigation = useNavigation();

  return (
    <View style={{ paddingTop: 16, paddingLeft: 16, paddingRight: 16, flexDirection: 'row' }}>
      <TouchableOpacity onPress={() => navigation.goBack()}>
        <Icon name="arrow-back" size={30} />
      </TouchableOpacity>
      <View style={{ width: 100 }} />
      <Text style={{ fontSize: 30 }}>Appbar</Text>
    </View>
  );
};

export { CustomAppBar, CustomAppBarCart };
