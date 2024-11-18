import React from 'react';
import { ScrollView, View, Text, Image, StyleSheet } from 'react-native';

const AppColors = {
  background: '#f5f5f5',
};

const CustomAppBar = () => (
  <View style={styles.appBar}>
    <Text style={styles.appBarText}>App Loja</Text>
  </View>
);

const CustomCardProduct = ({ productName, productPrice, imagePath }) => (
  <View style={styles.card}>
    <Image source={{ uri: imagePath }} style={styles.cardImage} />
    <Text style={styles.cardName}>{productName}</Text>
    <Text style={styles.cardPrice}>{productPrice}</Text>
  </View>
);

const Product = () => (
  <ScrollView style={styles.container}>
    <CustomAppBar />
    <View style={styles.padding}>
      <View style={styles.row}>
        <CustomCardProduct
          productName="Produto"
          productPrice="R$ 100"
          imagePath="lib/assets/images/avatar.jpg"
        />
        <CustomCardProduct
          productName="Produto"
          productPrice="R$ 100"
          imagePath="lib/assets/images/avatar.jpg"
        />
      </View>
      <View style={styles.row}>
        <CustomCardProduct
          productName="Produto"
          productPrice="R$ 100"
          imagePath="lib/assets/images/avatar.jpg"
        />
        <CustomCardProduct
          productName="Produto"
          productPrice="R$ 100"
          imagePath="lib/assets/images/avatar.jpg"
        />
      </View>
      <View style={styles.row}>
        <CustomCardProduct
          productName="Produto"
          productPrice="R$ 100"
          imagePath="lib/assets/images/avatar.jpg"
        />
        <CustomCardProduct
          productName="Produto"
          productPrice="R$ 100"
          imagePath="lib/assets/images/avatar.jpg"
        />
      </View>
      <View style={styles.row}>
        <CustomCardProduct
          productName="Produto"
          productPrice="R$ 100"
          imagePath="lib/assets/images/avatar.jpg"
        />
        <CustomCardProduct
          productName="Produto"
          productPrice="R$ 100"
          imagePath="lib/assets/images/avatar.jpg"
        />
      </View>
      <View style={styles.row}>
        <CustomCardProduct
          productName="Produto"
          productPrice="R$ 100"
          imagePath="lib/assets/images/avatar.jpg"
        />
        <CustomCardProduct
          productName="Produto"
          productPrice="R$ 100"
          imagePath="lib/assets/images/avatar.jpg"
        />
      </View>
      <View style={styles.row}>
        <CustomCardProduct
          productName="Produto"
          productPrice="R$ 100"
          imagePath="lib/assets/images/avatar.jpg"
        />
        <CustomCardProduct
          productName="Produto"
          productPrice="R$ 100"
          imagePath="lib/assets/images/avatar.jpg"
        />
      </View>
    </View>
  </ScrollView>
);

const styles = StyleSheet.create({
  container: {
    backgroundColor: AppColors.background,
    padding: 20,
  },
  appBar: {
    padding: 10,
    backgroundColor: '#333',
  },
  appBarText: {
    color: '#fff',
    fontSize: 20,
  },
  padding: {
    paddingHorizontal: 20,
  },
  row: {
    flexDirection: 'row',
    marginBottom: 20,
  },
  card: {
    backgroundColor: '#fff',
    padding: 10,
    marginRight: 10,
    width: 150,
    alignItems: 'center',
  },
  cardImage: {
    width: 100,
    height: 100,
  },
  cardName: {
    fontSize: 16,
    marginTop: 10,
  },
  cardPrice: {
    fontSize: 14,
    color: 'green',
    marginTop: 5,
  },
});

export default Product;
