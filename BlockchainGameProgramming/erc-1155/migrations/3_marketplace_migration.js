var Marketplace = artifacts.require("./Marketplace.sol");
var Token = artifacts.require("./GameToken.sol");

module.exports = (deployer, network, [owner]) => deployer
.then(() => deployMarketplace(deployer))

function deployMarketplace(deployer){
return deployer.deploy(
    Marketplace,
    Token.address
  );
}
