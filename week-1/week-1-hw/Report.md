# Encode Bootcamp Week 1 - Homework

Team members: Danny, Nadina and Georges

## Nadina's Contract:
https://sepolia.etherscan.io/address/0x24d810964c578a9d543618e59ce5b96dc82323d2

**Deployment** by 0x7Bb8be3D9015682d7AC0Ea377dC0c92B0ba152eF:
https://sepolia.etherscan.io/tx/0x6c614972361c2f7da0a714790c4a48f496cce7433ab8fdfdcdb992209e11c756

**Call setText to 'Contract Interaction 0xNadina'**:
-> transaction successful
https://sepolia.etherscan.io/tx/0x3746ed94fbb716719fde731fb5d201881bfcda430e2a6a109e871154ef3eebf7

**Call helloWorld**:
-> successful; returns 'Contract Interaction 0xNadina'

**Call owner**:
-> successful; returns 0x7Bb8be3D9015682d7AC0Ea377dC0c92B0ba152eF

**Transferred Ownership** to 0xa807cb55c126F7B2766C3Ae5d9bCB2B4ffAB69cf:
https://sepolia.etherscan.io/tx/0x5e2603192ced2082030a034c9de408e54026430ca85f9b6c523ebb41354a4f9f

**Call owner**:
-> successful; returns 0xa807cb55c126F7B2766C3Ae5d9bCB2B4ffAB69cf

**Call setText**:
-> reverts because not owner; Returned error: {"jsonrpc":"2.0","error":"execution reverted: Caller is not the owner","id":8182344480580752}

**Call setText** by 0xa807cb55c126F7B2766C3Ae5d9bCB2B4ffAB69cf:
-> successfull
https://sepolia.etherscan.io/tx/0xc2ffbe88aa053f15d4558f1a25d61394f8b32894a49a09cd4eba56c3f50f0aa0

**Transferred Ownership** back to 0x7Bb8be3D9015682d7AC0Ea377dC0c92B0ba152eF:
-> successfull
https://sepolia.etherscan.io/tx/0x215c0c057b137bc0a52772ba7291889b3ed40900e4261e090f484590ac0c682e

**Call helloWorld**:
-> successfull; returns 'Danny testing contract'

