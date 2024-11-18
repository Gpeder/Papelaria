import React from 'react';

const CustomCircleAvatar = ({ imagePath }) => {
  return <img src={imagePath} alt="Avatar" style={{ borderRadius: '50%', width: '50px', height: '50px' }} />;
};

const BannerProduct = () => {
  return (
    <div style={{ height: '100px', width: '100%', overflowX: 'scroll', display: 'flex' }}>
      <div style={{ marginLeft: '10px' }}><CustomCircleAvatar imagePath="" /></div>
      <div style={{ marginLeft: '10px' }}><CustomCircleAvatar imagePath="" /></div>
      <div style={{ marginLeft: '10px' }}><CustomCircleAvatar imagePath="" /></div>
      <div style={{ marginLeft: '10px' }}><CustomCircleAvatar imagePath="" /></div>
      <div style={{ marginLeft: '10px' }}><CustomCircleAvatar imagePath="" /></div>
    </div>
  );
};

const CustomBanner = () => {
  return (
    <div style={{ height: '150px', width: '100%', backgroundColor: 'red' }}></div>
  );
};

export { BannerProduct, CustomBanner };
