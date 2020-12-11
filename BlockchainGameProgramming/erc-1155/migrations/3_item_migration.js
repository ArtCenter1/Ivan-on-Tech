var Token = artifacts.require("./ItemToken.sol");

module.exports = (deployer, network, [owner]) => deployer
  .then(() => deployToken(deployer));

function deployToken(deployer){
  return deployer.deploy(
      Token
    );
}
