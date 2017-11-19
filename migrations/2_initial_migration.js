var AddSubTest = artifacts.require("AddSubTest");
var SquareTest = artifacts.require("SquareTest");

module.exports = function(deployer) {
  deployer.deploy(AddSubTest);
  deployer.deploy(SquareTest);
};
