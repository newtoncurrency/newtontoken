const Newton = artifacts.require('Newton')

module.exports = async function(deployer) {
  await deployer.deploy(Newton)
}
