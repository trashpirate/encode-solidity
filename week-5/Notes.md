# Notes for Week 5 #

## Lesson 17

Gas optimization is doing more of what is cheap and less of what's expensive

**Cheap computation**
- Reading constants and immutable variables.
- Reading and writing local variables.
- Reading and writing memory variables like memory arrays and structs.
- Reading calldata variables like calldata arrays and structs.
- Internal function calls.

**Expensive computation**
- Read and writing state variables that are stored in contract storage.
- External function calls.
- Loops

Example:
- storage read/write is more expensive than memory read/write
- packed vs unpacked structs -> organizing the types (packed) saves gas (~10%)

**Gas optimization**
- hardhat settings:
```settings: {
      optimizer: {
        enabled: true,
        runs: 200
      }
    }
```

- There is a trade-off between deployment and transaction. Optimizer optmizes for expected runs of the contract. So 1 optimized for deployment, while high number of runs optimizes transactions.

**Smart Contract Security**
- transaction is automatically reverted when underflow or overflow
- can be disabled using:
```
unchecked {

}
```

## Lesson 18

**Gas Limit**
- blocks have gas limits, currently they are around 50% full
- the bigger the block the more powerful the processing needs to be
- gas limit limits number of transactions that fit in a block
- if gas of transaction exceeds block gas limit the transaction will be reverted and lose all gas
- increasing the gas fees might make you be included in the mempool earlier
- gas spent is computation dependent
- it's always good to have some room within the gas limits of a transaction, otherwise the transaction might revert
- unused gas goes back to sender

**Gas and Loops**
- unbounded loops are a problem because might cause transaction run out of gas
  -- block gas limit

- contracts cannot read events or memory of past transactions, this only works with state variables
- solution for unbounded loops is amortisation of work
  -- saving last state in storage that loop can be completed in multiple steps


## Lesson 19
**Block hash and Timestamp**
- randomness on chain is not possible because blockchain base layer is deterministic
- randomness needs to be implemented on top of chain
- quiterandomness can be achieved through block hash
  - miners can manipulate the hash when they mine the block
    - timestamp can be manipulated
  - uint256(blockhash(block.number)) // in solidity uint and uint256 are the same
  - current block hash is unknown at the time of function execution, thus a previous block needs to be chosen


**Use readline for scripts**
- Allows to give different options through command line
- Transactions cannot run in parallel, therefore results are always visible (game like rock paper scissors would not work)
  - Use hash and random number to seal result, compare hashes after revealing result
  
**Can use oracles**
- oracle networks provide random numbers but can be compromised
