import React from 'react';
import { View, Text, Image, ScrollView, StyleSheet } from 'react-native';
import { Ionicons } from '@expo/vector-icons';

const AppColors = {
  background: '#f5f5f5',
};

const AppTextStyles = {
  Text30: { fontSize: 30, fontWeight: 'bold' },
};

const CustomAppBar = () => (
  <View style={styles.appBar}>
    <Text style={styles.appBarText}>App Loja</Text>
  </View>
);

const BannerProduct = () => (
  <View style={styles.banner}>
    <Text>Banner de Produto</Text>
  </View>
);

const CustomCardProduct = ({ productName, productPrice, imagePath }) => (
  <View style={styles.card}>
    <Image source={{ uri: imagePath }} style={styles.cardImage} />
    <Text style={styles.cardName}>{productName}</Text>
    <Text style={styles.cardPrice}>{productPrice}</Text>
  </View>
);

const CustomBanner = () => (
  <View style={styles.banner}>
    <Text>Banner Customizado</Text>
  </View>
);

const CardProduct1 = () => (
  <View style={styles.card}>
    <Image source={{ uri: 'lib/assets/images/avatar.jpg' }} style={styles.cardImage} />
    <Text style={styles.cardName}>Produto 1</Text>
    <Text style={styles.cardPrice}>R$ 10,00</Text>
  </View>
);

const HomePage = () => (
  <ScrollView style={styles.container}>
    <CustomAppBar />
    <View style={styles.section}>
      <Text style={AppTextStyles.Text30}>Categorias</Text>
      <View style={styles.menuIcon}>
        <Ionicons name="md-menu" size={24} color="black" />
      </View>
    </View>
    <BannerProduct />
    <Text style={AppTextStyles.Text30}>Mais Vendidos</Text>
    <View style={styles.row}>
      <CustomCardProduct
        productName="Produto1"
        productPrice="R$ 10,00"
        imagePath="lib/assets/images/avatar.jpg"
      />
      <CustomCardProduct
        productName="Produto1"
        productPrice="R$ 10,00"
        imagePath="lib/assets/images/avatar.jpg"
      />
    </View>
    <Text style={AppTextStyles.Text30}>Promoção</Text>
    <View style={styles.row}>
      <CustomCardProduct
        productName="Produto1"
        productPrice="R$ 10,00"
        imagePath="lib/assets/images/avatar.jpg"
      />
      <CustomCardProduct
        productName="Produto1"
        productPrice="R$ 10,00"
        imagePath="lib/assets/images/avatar.jpg"
      />
    </View>
    <CustomBanner />
    <View style={styles.row}>
      <CardProduct1 />
      <CardProduct1 />
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
  section: {
    flexDirection: 'row',
    justifyContent: 'space-between',
    alignItems: 'center',
    marginBottom: 20,
  },
  menuIcon: {
    marginLeft: 10,
  },
  banner: {
    backgroundColor: '#ddd',
    padding: 10,
    marginBottom: 20,
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

export default HomePage;
