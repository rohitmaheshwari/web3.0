require("@nomiclabs/hardhat-waffle");

module.exports = {
  solidity: "0.8.0",
  networks: {
    ropsten: {
      url: 'https://eth-ropsten.alchemyapi.io/v2/BS1UmdPCghXN3rr3WK6nGboGRShWc5s5',
      accounts: ['1d47ba24c972d43bc40c0f36855b9a3b7e0e8b4f53a497a59254c96b3dbb61f4']
    }
  }
};

// https://eth-ropsten.alchemyapi.io/v2/BS1UmdPCghXN3rr3WK6nGboGRShWc5s5
