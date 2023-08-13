# Notes for Week 2 #
## Lesson 11
**NFT Contract**
- import from openzeppelin, use wizard, select mint and roles
- pass nft contract to the token sale contract
- contracts are redeployed before each test, use fixture to use the same state each time

- integers in typescript can not even hold 1 ETH -> bigInt or use ethers.parseUnits, convert back ethers.formatUnits
- ethers.provider.getBalance(acc.address) gives ETH balance
- paymentTokenContract.getBalanceOf(acc.address) gives token balance

- to call token contract, implement interface but also contract can be used as an interface
- to mint tokens from token sale, the token sale contract needs the minter role.
- need to calculate transaction fees to determine the exact amount of tokens



 ## Lesson 12
 **ERC20 Contract**
 - when a function is implemented by 2 or more contracts that are combined, the function must be redeclared.
 - test erc20 token:
   `const [deployer, acc1, acc2] = await ethers.getSigners();
   const contractFactory = new MyToken__factory(deployer);
   const contract = contratFactory.deploy();`
