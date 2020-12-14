const Helloworld = artifacts.require("Helloworld");

module.exports = function(deployer, network, accounts){
  deployer.deploy(Helloworld).then(function(instance){
// <<<<<<< HEAD
//       instance.setMessage("Hello Vincent!",{value: 1000000,from: account[0]}).then(function(){
//         instance.getMessage().then(function(message){
//           console.log("Current message: " + message);
//         });
// =======
      instance.setMessage("Hello Vincent!", {value: 1000000, from: accounts[0]}).then(function(){
        console.log("Success");
      }).catch(function(err){
        console.log("error: " + err);
// >>>>>>> 0854fd89f704021d85b0bdf432c01fa55a7aad06
      });
  }).catch(function(err){
    console.log("Deploy failed " + err);
  });
};
