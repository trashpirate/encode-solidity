# Notes for Week 2 #
## Lesson 05
- Use NVM to install nodejs - version 18.17 or greater
- May be easier to us WSL instead of Windows
- `npm run test` in openzeppelin folder will run test using harhat 
- Harhat is more convenient because you can use javascript (typescript) code for testing which you can reuse in frontend
- OpenZeppelin library already provides test files for different conracts
- 


## Lesson 07
Code used from: [https://docs.soliditylang.org/en/latest/solidity-by-example.html#voting](https://docs.soliditylang.org/en/latest/solidity-by-example.html#voting)

hre - Hardhat Runtime Environment:
- runs blockchain locally for testing
- can get contract factory by name (no abi necessary)

**constructor:**
- takes array of bytes32
- bytes32 has fixed size (max. 32 bytes) - if string is too big it is split into two memory locations
- ethers can convert string into bytes32 and vice versa: [https://docs.ethers.org/v6/api/abi/#about-abi](https://docs.ethers.org/v6/api/abi/#about-abi)

**deploy:**
- contract factory is offchain object, which becomes onchain when calling deploy() -- there can also be onchain factories
- ABI of contract is created during compilation and can be found in artifacts folder in json file.
- contract.deploy() initializes the deployment, therefore you need to call contract.waitForDeployment()
- use loadFixture to create snapshot of blockchain

**getter functions:**
- solidity requires index for array getter function
- typechain allows for using key names in structs

**mapping vs arrays:**
- if index that not exists is called, solidity reverts transaction
- mapping is similar to array but allows keys that are different from uint
- mapping will always answer even if key out of bounds -> will just return 0
- solidity: array you have to define function for array length
  

**Hooks:**
- [mocha hooks](https://mochajs.org/#hooks)


ToDo:
- look up map function (typescript) -> [Medium Article](https://medium.com/@ExplosionPills/map-vs-for-loop-2b4ce659fb03#:~:text=In%20the%20same%20way%20that,iteration%20are%20handled%20for%20us.)
- readup on opcodes / bytes
- organize lesson projects with git


## Lesson 08

**Async Functions**
- main().catch((arg) => {...});
- main().then( () => {} );

- use ts-node to run scripts with arguments:
  `yarn run ts-node --files .\scripts\Deployment.ts "arg1" "arg2" "arg3"`

**Deploy on public blockchain**
- own node
- use infura, alchemy, or portal
- use ethers:
  `const provider = ethers.getDefaultProvider( "sepolia" );`
  uses some shared keys -> they can go offline often, therefore use community providers
  Other ways of calling community provider:
  `const provider = new ethers.PocketProvider( "goerli" );`
  `const provider = new ethers.JsonRpcProvider( "url" );`
- to be able to sign the transaction to deploy, a wallet needs to be created using ethers
  `const wallet = new ethers.Wallet( process.env.PRIVATE_KEY ?? "", provider );`
  `?? ""` is required because of typescript but would not work if private key undefined

**Interact with deployed contract**
- use contract.attach(contractAddress) as Contract -> gives new instance of contract at specific address
  
