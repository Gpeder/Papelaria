// src/Profile.js
import React from 'react';
import CustomAppBar from './components/CustomAppBar';
import CustomTextFormField from './components/CustomTextFormField';
import PrimaryButton from './components/PrimaryButton';

const Profile = () => {
  return (
    <div style={{ textAlign: 'center' }}>
      <CustomAppBar />
      <div style={{ marginTop: '20px' }}>
        <img
          src="lib/assets/images/avatar.jpg"
          alt="Avatar"
          style={{ borderRadius: '50%', width: '140px', height: '140px' }}
        />
        <div style={{ padding: '0 20px', marginTop: '20px' }}>
          <CustomTextFormField label="Nome" />
          <CustomTextFormField label="Email" />
          <CustomTextFormField label="Telefone" />
          <CustomTextFormField label="Endereço" />
          <PrimaryButton onPressed={() => {}} text="Salvar" />
        </div>
      </div>
    </div>
  );
};

export default Profile;
