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
    }```

There is a trade-off between deployment and transaction. Optimizer optmizes for expected runs of the contract. So 1 optimized for deployment, while high number of runs optimizes transactions.

**Smart Contract Security**

