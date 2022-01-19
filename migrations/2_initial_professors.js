const Professors = artifacts.require("Professors");

module.exports = function (deployer) {
  deployer.deploy(Professors);
};
