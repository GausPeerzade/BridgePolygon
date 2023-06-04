const hre = require("hardhat");

async function main() {

  const Gnft = await hre.ethers.getContractFactory("Gnft");
  const gnft = await Gnft.deploy();

  await gnft.deployed();

  console.log("Your Contract is Deployed to", gnft.address);

  const nftMint = await gnft.mint(5);

  console.log("You have minted 5 nfts", nftMint);


}
// We recommend this pattern to be able to use async/await everywhere
// and properly handle errors.
main().catch((error) => {
  console.error(error);
  process.exitCode = 1;
});
