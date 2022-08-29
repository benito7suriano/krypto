//eth-goerli.g.alchemy.com/v2/0KH_njLcXjIsEctsR0_jol0kkLDx0SbM

https: require('@nomicfoundation/hardhat-toolbox')
require('@nomicfoundation/hardhat-chai-matchers')
require('@nomiclabs/hardhat-ethers')
/** @type import('hardhat/config').HardhatUserConfig */
require('dotenv').config()

module.exports = {
  solidity: '0.8.9',
  networks: {
    goerli: {
      url: 'https://eth-goerli.g.alchemy.com/v2/0KH_njLcXjIsEctsR0_jol0kkLDx0SbM',
      accounts: [process.env.METAMASK_PRIVATE_KEY],
    },
  },
}
