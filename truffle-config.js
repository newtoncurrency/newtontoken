const HDWalletProvider = require('@truffle/hdwallet-provider')
const mnemonic = process.env.MNEMONIC

module.exports = {
  networks: {
    development: {
      host: '127.0.0.1',
      port: 9545,
      network_id: '*'
    },

    testnet: {
      provider: () => new HDWalletProvider({mnemonic, providerOrUrl: 'https://data-seed-prebsc-1-s1.binance.org:8545'}),
      network_id: 97,
      confirmations: 10,
      timeoutBlocks: 200,
      skipDryRun: true
    }
  },

  compilers: {
    solc: {
      version: '0.4.25'
    }
  }
}
