const {getAccountOne} = require('../constants');

const GIGSToken = artifacts.require('./GIGSToken.sol');

module.exports = async function (deployer, network, accounts) {

    const ownerAccount = getAccountOne(accounts, network);

    await deployer.deploy(GIGSToken, {from: ownerAccount});
};
