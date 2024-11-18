// src/Cadastro.js
import React, { useState } from 'react';
import { useNavigate } from 'react-router-dom';
import CustomTextField from './components/CustomTextField';
import PrimaryButton from './components/PrimaryButton';

const Cadastro = () => {
  const navigate = useNavigate();
  const [formData, setFormData] = useState({
    nome: '',
    sobrenome: '',
    email: '',
    senha: '',
    confirmarSenha: '',
  });

  const handleChange = (e) => {
    const { name, value } = e.target;
    setFormData((prevState) => ({
      ...prevState,
      [name]: value,
    }));
  };

  const handleSubmit = (e) => {
    e.preventDefault();
    if (formData.senha === formData.confirmarSenha) {
      navigate('/root');
    } else {
      alert('Senhas não coincidem!');
    }
  };

  return (
    <div style={{ backgroundColor: '#fff3f4', padding: '20px', minHeight: '100vh' }}>
      <div style={{ textAlign: 'center', marginTop: '100px' }}>
        <img
          src="lib/assets/images/logo.png"
          alt="Logo"
          style={{ width: '250px', height: '250px' }}
        />
      </div>
      <form onSubmit={handleSubmit} style={{ maxWidth: '400px', margin: '0 auto' }}>
        <div style={{ marginTop: '20px' }}>
          <CustomTextField
            label="Nome"
            name="nome"
            value={formData.nome}
            onChange={handleChange}
          />
          <CustomTextField
            label="Sobrenome"
            name="sobrenome"
            value={formData.sobrenome}
            onChange={handleChange}
          />
          <CustomTextField
            label="Email"
            name="email"
            value={formData.email}
            onChange={handleChange}
          />
          <CustomTextField
            label="Senha"
            name="senha"
            type="password"
            value={formData.senha}
            onChange={handleChange}
          />
          <CustomTextField
            label="Confirmar Senha"
            name="confirmarSenha"
            type="password"
            value={formData.confirmarSenha}
            onChange={handleChange}
          />
        </div>
        <div style={{ padding: '20px' }}>
          <PrimaryButton type="submit" text="Entrar" />
        </div>
      </form>
    </div>
  );
};

export default Cadastro;
