const Hogwards = artifacts.require("Hogwards");
const Professors = artifacts.require("Professors");

module.exports = function (deployer) {
  deployer.deploy(Hogwards);
  deployer.deploy(Professors);
};
