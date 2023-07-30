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

## Danny's Contract:
https://sepolia.etherscan.io/address/0x697836894fCA817717d6dc050CB1469ca3ea147C

**Deployment** by 0xa807cb55c126F7B2766C3Ae5d9bCB2B4ffAB69cf:
https://sepolia.etherscan.io/tx/0x27729a005476179299d6f3c4bc6379396441499993b48acc60c49f26f99515af

**Call helloWorld:**
-> successful; returns 'Second test from Danny'

**Call owner:**
-> successful; returns 0xa807cb55c126F7B2766C3Ae5d9bCB2B4ffAB69cf

**Call setText:**
Reverted because not the owner; Returned error: {"jsonrpc":"2.0","error":"execution reverted: Caller is not the owner","id":8182344480579173}

### Danny Transactions

**Wallet Address:**
0xa807cb55c126F7B2766C3Ae5d9bCB2B4ffAB69cf

**First Transaction:**
https://sepolia.etherscan.io/tx/0x27729a005476179299d6f3c4bc6379396441499993b48acc60c49f26f99515af

State Changes 
- Contract was created

**Second Transaction:**
https://sepolia.etherscan.io/tx/0x1a2b6b0a171f6a3f66bd0bd049fe3990f3c8018010ffa9e04eb6b4c2e9732ad7

State Changes
- Text was changed from 'Hello World' to 'Contract interaction 0xDanny'

Function Calls
- helloWorld() returns 'Contract interaction 0xDanny' but no state is changed since it only reads
- get function of owner returns '0xa807cb55c126F7B2766C3Ae5d9bCB2B4ffAB69cf' which is my address

**Third Transaction:**
https://sepolia.etherscan.io/tx/0x77bd418e8621ebf25a7249ed96268e71c84284f8c0f82f0bfa17add2e75375cf

State Changes
- I think I clicked the function twice but it says text was changed to 'Contract interaction 0xDanny'

**Fourth Transaction:**
https://sepolia.etherscan.io/tx/0x460ff7c2f3663e4f0cad58c21a479731fabc5a8926ec406953c8bf0c0aae1fb1

State Changes
- I wanted to make sure I made a mistake so I called the setText() function again and text changed from 'Contract interaction 0xDanny' to 'Second test from danny'
- 
**Fifth Transaction:**
https://sepolia.etherscan.io/tx/0x193f1b2885e721ff5e3b60893b135377b64a6fb2c98d767e9b934612e7900e22

State Changes
- I transferred ownership to Nadina: 0x7Bb8be3D9015682d7AC0Ea377dC0c92B0ba152eF
- the owner changed to 0x7Bb8be3D9015682d7AC0Ea377dC0c92B0ba152eF

**Sixth Transaction:**
- I attempted to setText but I got an error of "execution reverted: Caller is not the owner"
- I tried calling helloWorld() but I kept getting "Failed to decode output: Error: data out-of-bounds"

**Seventh Transaction:**
- Nadina calls setText() with 'Contract Interaction 0xNadina' - successful!
  https://sepolia.etherscan.io/tx/0xa2a9e46d87e1f627e4957d089cc670bc143e503a9643a3944a0df88ec2b2a62a
- Nadina calls helloWorld(): returns 'Contract Interaction 0xNadina'
- Nadina transfers ownership back to Danny: 
  https://sepolia.etherscan.io/tx/0x72465eef5762c06c67eb103c930f1e0f1d4afd043f9f5aa900d1eef466293e4d
- Nadina calls set Text - fails
  Returned error: {"jsonrpc":"2.0","error":"execution reverted: Caller is not the owner","id":8182344480580906}