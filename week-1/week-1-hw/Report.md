# Encode Bootcamp Week 1 - Homework

Team members: Danny, Nadina and Georges

## Contract:
https://sepolia.etherscan.io/address/0x24d810964c578a9d543618e59ce5b96dc82323d2

### Deployment by 0x7Bb8be3D9015682d7AC0Ea377dC0c92B0ba152eF:
https://sepolia.etherscan.io/tx/0x6c614972361c2f7da0a714790c4a48f496cce7433ab8fdfdcdb992209e11c756

### Call setText to 'Contract Interaction 0xNadina' by Deployer:
-> transaction successful
https://sepolia.etherscan.io/tx/0x3746ed94fbb716719fde731fb5d201881bfcda430e2a6a109e871154ef3eebf7

### Call helloWorld:
-> successful; returns 'Contract Interaction 0xNadina'

### Call owner:
-> successful; returns 0x7Bb8be3D9015682d7AC0Ea377dC0c92B0ba152eF

## Contract:
https://sepolia.etherscan.io/address/0x697836894fCA817717d6dc050CB1469ca3ea147C

### Deployment by Danny

### Call helloWorld:
-> successful; returns 'Second test from Danny'

### Call owner:
-> successful; returns 0xa807cb55c126F7B2766C3Ae5d9bCB2B4ffAB69cf

### Call setText:
Reverted because not the owner; Returned error: {"jsonrpc":"2.0","error":"execution reverted: Caller is not the owner","id":8182344480579173}
