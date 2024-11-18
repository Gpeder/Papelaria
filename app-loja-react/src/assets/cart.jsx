import React from 'react';
import { ScrollView, View, Text, StyleSheet } from 'react-native';

const AppColors = {
  background: '#f5f5f5',
};

const CustomAppBarCart = () => (
  <View style={styles.appBar}>
    <Text style={styles.appBarText}>Carrinho</Text>
  </View>
);

const CartCard = () => (
  <View style={styles.cartCard}>
    <Text style={styles.cartCardText}>Produto no carrinho</Text>
    {}
  </View>
);

const Cart = () => (
  <View style={styles.container}>
    <CustomAppBarCart />
    <ScrollView contentContainerStyle={styles.scrollViewContent}>
      <View style={styles.cartItems}>
        <CartCard />
        <CartCard />
        <CartCard />
      </View>
    </ScrollView>
  </View>
);

const styles = StyleSheet.create({
  container: {
    flex: 1,
    backgroundColor: AppColors.background,
  },
  appBar: {
    padding: 10,
    backgroundColor: '#333',
    alignItems: 'center',
  },
  appBarText: {
    color: '#fff',
    fontSize: 20,
  },
  scrollViewContent: {
    paddingBottom: 20,
  },
  cartItems: {
    paddingHorizontal: 16,
    marginTop: 50,
  },
  cartCard: {
    backgroundColor: '#fff',
    padding: 20,
    marginBottom: 10,
    borderRadius: 8,
    shadowColor: '#000',
    shadowOffset: { width: 0, height: 2 },
    shadowOpacity: 0.1,
    shadowRadius: 6,
    elevation: 5,
  },
  cartCardText: {
    fontSize: 18,
    fontWeight: 'bold',
  },
});

export default Cart;
