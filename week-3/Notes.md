# Notes for Week 3 #

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
 - test erc20 token:<br/>
   `const [deployer, acc1, acc2] = await ethers.getSigners();`<br/>
  `const contractFactory = new MyToken__factory(deployer);` is equal to<br/>`const contractFactory = await ethers.getContractFactory(""MyToken);`<br/>
  but the latter doesn't give error in editor but only at runtime<br/>
   `const contract = await contratFactory.deploy();`<br/>
   `await contract.waitForDeployment();`
- voting power: tokens don't give automatically voting power, need to self delegate. Tokens that you keep also keep voting powers but tokens transferred lose the voting power

**Homework:**
- deploy first the ERC20 token so the blocknumber is minted, mint tokens, transact, delegate, etc; then deploy TokenizedBallot
- building TokenizedBallot.sol
  1. use Ballot contract from last week
  2. implement an interface with IMyToken to call pastVotes to replace the Voters variable in the Ballot
  3. Still need proposal to track results of voting
  4. No chairperson is necessary
  5. no mapping of the voters is required
  6. contructor:
     - parameters: proposalNames, token address, target blocknumber
     - needs token contract from address with Interface
     - tie Ballot to target Blocknumber - so contract is blocknumber specific
  7. no need for giving right to vote
  8. no delegate function neeeded
  9. Need vote function, can vote with token amount to specific proposal
     - parameters: proposal, amount
     - require that account has more tokens than amount to be voted with -> error message: TokenizedBallot: trying to vote morethan allowed
     - increase vote count of proposal
     - use mapping for voting power spent to track voting power spent for each account 
  10. get voting power function: return tokencontract.getpastvotes(account, targetblocknumber): subtract voting power spent
  11. Keep winningPropsal, winning result
  
