const Helloworld = artifacts.require("Helloworld");

module.exports = function(deployer) {
  deployer.deploy(Helloworld).then(function(instance){
    isntance.setMessage("Hello Again !");
  });
};
