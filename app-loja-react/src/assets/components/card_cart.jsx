import React from 'react';

// Estilos básicos
const styles = {
  cardContainer: {
    display: 'flex',
    flexDirection: 'column',
    alignItems: 'flex-start',
    padding: '8px',
  },
  productImageContainer: {
    borderRadius: '8px',
    overflow: 'hidden',
    height: '120px',
    width: '120px',
    boxShadow: '0 4px 6px rgba(0,0,0,0.1)',
  },
  productImage: {
    width: '100%',
    height: '100%',
    objectFit: 'cover',
  },
  text: {
    fontSize: '12px',
    fontWeight: 'bold',
  },
  priceText: {
    fontSize: '12px',
    fontWeight: 'normal',
  },
  cardProductContainer: {
    width: '180px',
    height: '260px',
    borderRadius: '8px',
    padding: '8px',
  },
  productName: {
    fontSize: '16px',
    fontWeight: 'bold',
  },
  productPrice: {
    fontSize: '16px',
    fontWeight: 'normal',
  },
  circleAvatar: {
    borderRadius: '50%',
    width: '100px',
    height: '100px',
  },
};

const CardProduct = ({ nomeProduto, preco, imagemAsset }) => {
  return (
    <div style={styles.cardContainer}>
      <div style={styles.productImageContainer}>
        <img src={imagemAsset} alt={nomeProduto} style={styles.productImage} />
      </div>
      <p style={styles.text}>{nomeProduto}</p>
      <p style={styles.priceText}>{preco}</p>
    </div>
  );
};

const CardProduct1 = () => {
  return (
    <div style={styles.cardContainer}>
      <div
        style={{
          ...styles.productImageContainer,
          height: '150px',
          width: '150px',
        }}
      >
        <img
          src="lib/assets/images/logo.png"
          alt="Logo"
          style={styles.productImage}
        />
      </div>
      <p style={styles.text}>Nome do produto</p>
      <p style={styles.priceText}>Preço</p>
    </div>
  );
};

const CustomCircleAvatar = ({ imagePath }) => {
  return <img src={imagePath} alt="Avatar" style={styles.circleAvatar} />;
};

const CustomCardProduct = ({ productName, productPrice, imagePath }) => {
  return (
    <div style={styles.cardProductContainer}>
      <div
        style={{
          ...styles.productImageContainer,
          height: '260px',
        }}
      >
        <img
          src={imagePath}
          alt={productName}
          style={styles.productImage}
        />
      </div>
      <p style={styles.productName}>{productName}</p>
      <p style={styles.productPrice}>{productPrice}</p>
    </div>
  );
};

export { CardProduct, CardProduct1, CustomCircleAvatar, CustomCardProduct };
