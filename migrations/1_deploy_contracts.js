const ConvertLib = artifacts.require("ConvertLib");
const MetaCoin = artifacts.require("MetaCoin");
const Greeting = artifacts.require("Greeting");
const Primitives = artifacts.require("Primitives");
const ReceiveEther = artifacts.require("ReceiveEther");
const SendEther = artifacts.require("SendEther");

module.exports = function (deployer) {
  deployer.deploy(ConvertLib);
  deployer.link(ConvertLib, MetaCoin);
  deployer.deploy(MetaCoin);
  deployer.deploy(Greeting);
  deployer.deploy(Primitives);
  deployer.deploy(SendEther);
  deployer.deploy(ReceiveEther);
};
