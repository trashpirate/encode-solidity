# Notes for Week 2 #
## Lesson 05
- Use NVM to install nodejs - version 18.17 or greater
- May be easier to us WSL instead of Windows
- `npm run test` in openzeppelin folder will run test using harhat 
- Harhat is more convenient because you can use javascript (typescript) code for testing which you can reuse in frontend
- OpenZeppelin library already provides test files for different conracts
- Make sure not to initialize a project within another -> will cause error
- Starting a new project:
    yarn init -2
    yarn config set nodeLinker node-modules
    yarn add hardhat --dev
    rm .\README.md

- Use Hardhat's Solidity and Mocha Test Explorer extension