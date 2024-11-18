// src/RootPage.js
import React, { useState } from 'react';
import { BrowserRouter as Router, Routes, Route, Link, useNavigate } from 'react-router-dom';
import HomePage from './HomePage';
import Product from './Product';
import Profile from './Profile';

const RootPage = () => {
  const [currentPage, setCurrentPage] = useState(0);
  const navigate = useNavigate();

  const handleNavigation = (index) => {
    setCurrentPage(index);
    switch (index) {
      case 0:
        navigate('/');
        break;
      case 1:
        navigate('/product');
        break;
      case 2:
        navigate('/profile');
        break;
      default:
        break;
    }
  };

  return (
    <div style={{ display: 'flex', flexDirection: 'column', height: '100vh' }}>
      <div style={{ flex: 1, overflowY: 'auto' }}>
        <Routes>
          <Route path="/" element={<HomePage />} />
          <Route path="/product" element={<Product />} />
          <Route path="/profile" element={<Profile />} />
        </Routes>
      </div>
      <div style={{ borderTop: '1px solid #ccc', padding: '10px' }}>
        <div style={{ display: 'flex', justifyContent: 'space-around' }}>
          <button onClick={() => handleNavigation(0)} style={styles.navButton}>Home</button>
          <button onClick={() => handleNavigation(1)} style={styles.navButton}>Product</button>
          <button onClick={() => handleNavigation(2)} style={styles.navButton}>Profile</button>
        </div>
      </div>
    </div>
  );
};

const styles = {
  navButton: {
    flex: 1,
    padding: '10px',
    textAlign: 'center',
    backgroundColor: '#007bff',
    color: 'white',
    border: 'none',
    cursor: 'pointer',
    borderRadius: '4px',
  }
};

export default RootPage;
