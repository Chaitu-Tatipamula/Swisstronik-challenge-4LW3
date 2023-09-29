const {ethers}  = require("hardhat")


async function main(){

   const erc20 =  await ethers.getContractFactory("TokenChallenge");
   const deployedContract = await erc20.deploy();
   
   console.log("Contract Deployed at address : ",deployedContract.target);

}

main()
.then(()=>process.exit(0))
.catch((error)=>{
  console.error(error);
  process.exit(1);
})