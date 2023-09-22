/** @type import('hardhat/config').HardhatUserConfig */

// require("@nomiclabs/hardhat-waffle")

const ALCHEMY_API_KEY = "y67ChyU7xHUWqmoKs8Z1pW7SBMeZ-Xp0";
const ROPSTEN_PRIVATE_KEY="a29fd1f7264b00410bb151014ba63c317d39e5926adb252aa28f9fe96d41ad13";


module.exports = {
  solidity: "0.8.18",


  networks:{
    goerli:{
      url:`https://eth-goerli.g.alchemy.com/v2/${ALCHEMY_API_KEY}`,
      accounts:[`${ROPSTEN_PRIVATE_KEY}`],
    }
  }
};
