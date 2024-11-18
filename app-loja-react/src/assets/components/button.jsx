import React from 'react';

// Estilos básicos
const styles = {
  button: {
    borderRadius: '20px',
    height: '50px',
    display: 'flex',
    alignItems: 'center',
    justifyContent: 'center',
    fontSize: '16px',
    cursor: 'pointer',
  },
  primaryButton: {
    backgroundColor: '#007bff',
    color: '#fff',
    borderRadius: '20px',
  },
  secondaryButton: {
    backgroundColor: '#fff',
    color: '#6c757d',  
    borderRadius: '20px',
    border: '1px solid #6c757d', 
  },
};

const PrimaryButton = ({ onClick, text }) => {
  return (
    <div
      style={{ ...styles.button, ...styles.primaryButton }}
      onClick={onClick}
    >
      {text}
    </div>
  );
};

const SecondaryButton = ({ onClick, text }) => {
  return (
    <div
      style={{ ...styles.button, ...styles.secondaryButton }}
      onClick={onClick}
    >
      {text}
    </div>
  );
};

export { PrimaryButton, SecondaryButton };
