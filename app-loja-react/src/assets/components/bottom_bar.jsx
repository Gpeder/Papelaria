import React, { useState } from 'react';

const CustomBottomBar = ({ onTap }) => {
  const [selectedIndex, setSelectedIndex] = useState(0);

  const handleItemClick = (index) => {
    setSelectedIndex(index);
    onTap(index);
  };

  return (
    <div style={{ position: 'fixed', bottom: 0, width: '100%', backgroundColor: '#f4f4f4', boxShadow: '0 -2px 5px rgba(0,0,0,0.1)', padding: '10px 0' }}>
      <ul style={{ display: 'flex', justifyContent: 'space-around', listStyle: 'none', margin: 0, padding: 0 }}>
        <li
          style={{ textAlign: 'center', flex: 1, cursor: 'pointer', color: selectedIndex === 0 ? '#007bff' : '#6c757d' }}
          onClick={() => handleItemClick(0)}
        >
          <i className={`fas ${selectedIndex === 0 ? 'fa-home' : 'fa-home-alt'}`} style={{ fontSize: '24px' }}></i>
          <div>Home</div>
        </li>
        <li
          style={{ textAlign: 'center', flex: 1, cursor: 'pointer', color: selectedIndex === 1 ? '#007bff' : '#6c757d' }}
          onClick={() => handleItemClick(1)}
        >
          <i className={`fas ${selectedIndex === 1 ? 'fa-shopping-bag' : 'fa-shopping-bag-open'}`} style={{ fontSize: '24px' }}></i>
          <div>Produtos</div>
        </li>
        <li
          style={{ textAlign: 'center', flex: 1, cursor: 'pointer', color: selectedIndex === 2 ? '#007bff' : '#6c757d' }}
          onClick={() => handleItemClick(2)}
        >
          <i className={`fas ${selectedIndex === 2 ? 'fa-user' : 'fa-user-alt'}`} style={{ fontSize: '24px' }}></i>
          <div>Perfil</div>
        </li>
      </ul>
    </div>
  );
};

export default CustomBottomBar;
