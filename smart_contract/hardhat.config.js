// https://eth-goerli.g.alchemy.com/v2/_S2BSYis1LyIdBGjPKLTEgOmvF1XIqxr


require('@nomiclabs/hardhat-waffle')

module.exports = {
  solidity: '0.8.0',
  networks: {
    goerli: {
      url: 'https://eth-goerli.g.alchemy.com/v2/_S2BSYis1LyIdBGjPKLTEgOmvF1XIqxr',
      // TODO delete
      accounts: [ '39d7c200d5039561f7db670b07136b77285681dbcc8f73eca787efe2c82fb614']
    }
  }
}