const Hogwards = artifacts.require("Hogwards");

module.exports = function (deployer) {
  deployer.deploy(Hogwards);
};
