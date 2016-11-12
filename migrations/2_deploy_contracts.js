module.exports = function(deployer) {
  deployer.deploy(EscrowIncentive, 'lock-funds', 1478217600, {from: web3.eth.accounts[0], value: 200000, gas: 4000000});
};
