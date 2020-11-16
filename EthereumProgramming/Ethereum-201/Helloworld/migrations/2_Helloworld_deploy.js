const Helloworld = artifacts.require("Helloworld");

module.exports = function(deployer) {
  deployer.deploy(Helloworld).then(function(instance){
      instance.setMessage("Hello Vincent!").then(function(){
        instance.getMessage().then(function(message){
          console.log("Current message: " + message);
        });
      });
  });
};
