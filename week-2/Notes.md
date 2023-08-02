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

if string is too big it is split into two memory locations
bytes32 has fixed size (max. 32 bytes)

**constructor:**
- takes array of bytes32
- ethers can convert string into bytes32 and vice versa: [https://docs.ethers.org/v6/api/abi/#about-abi](https://docs.ethers.org/v6/api/abi/#about-abi)

ToDo:
- look up map function (typescript) -> [Medium Article](https://medium.com/@ExplosionPills/map-vs-for-loop-2b4ce659fb03#:~:text=In%20the%20same%20way%20that,iteration%20are%20handled%20for%20us.)
- organize lesson projects with git
