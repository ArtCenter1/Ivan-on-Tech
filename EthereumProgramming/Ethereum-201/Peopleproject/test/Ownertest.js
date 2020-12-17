const People = artifacts.require("People");
const truffleAssert = require("truffle-assertions");

contract("People", async function(accounts){

  let instance;

  before(async function(){
    instance = await People.deployed()
  });

  it("shouldn't create a person with age over 150 years", async function(){
    await truffleAssert.fails(instance.createPerson("Bob", 200, 190, {value: web3.utils.toWei("1", "ether")}), truffleAssert.ErrorType.REVERT);
  });
  it("shouldn't create a person without payment", async function(){
    await truffleAssert.fails(instance.createPerson("Bob", 50, 190, {value: 1000}), truffleAssert.ErrorType.REVERT);
  });
  it("should set senior status correctly", async function(){
    await instance.createPerson("Bob", 65, 190, {value: web3.utils.toWei("1", "ether")});
    let result = await instance.getPerson();
    assert(result.senior === true, "Senior level not set");
  });
  it("should set age correctly", async function(){
    let result = await instance.getPerson();
    assert(result.age.toNumber() === 65, "Age not set correctly");
  });
  //check to see if the person was deleted correctly
  
  it("should be deleted correctly", async function(){
    await truffleAssert.fails(instance.deletePerson(accounts)
  });
  //check to see if was deleted by the owner
});
