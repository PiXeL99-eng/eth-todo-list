const TodoList = artifacts.require("TodoList");

module.exports = function(deployer) {
  deployer.deploy(TodoList);
};

//migrations help put the smart contracts on the blockchain... make sure the migration files are numbered, which indicates truffle, the order in which they should be run