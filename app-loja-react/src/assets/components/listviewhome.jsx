import React from 'react';
import { View, Text, StyleSheet, ScrollView } from 'react-native';
import CardProduct1 from './CardProduct1'; 
import BannerProduct from './BannerProduct'; 

const ListViewHome = () => {
  return (
    <ScrollView contentContainerStyle={styles.container}>
      <Text style={styles.title}>Promoção 🔥</Text>
      <View style={styles.row}>
        <CardProduct1 />
        <CardProduct1 />
      </View>
      <View style={styles.spacing} />
      <View style={styles.row}>
        <CardProduct1 />
        <CardProduct1 />
      </View>
      <View style={styles.spacing} />
      <Text style={styles.title}>Mais vendidos 🤩</Text>
      <BannerProduct />
      <View style={styles.spacing} />
      <Text style={styles.title}>Descobertas do dia 🔍</Text>
    </ScrollView>
  );
};

const styles = StyleSheet.create({
  container: {
    padding: 16,
  },
  title: {
    fontSize: 30,
    fontWeight: 'bold',
  },
  row: {
    flexDirection: 'row',
    justifyContent: 'space-between',
  },
  spacing: {
    height: 16,
  },
});

export default ListViewHome;
