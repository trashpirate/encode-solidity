// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.4.0 <0.9.0;

interface IHelloWorld {
    function helloWorld() public view returns (string memory){}; // only ABI (bytecode) is necessary to interact with the contract on chain
    
}
contract HelloWorld {
    string private text; // state variable

    constructor(){
        text = "Hello World!"; // same as declaring above (same bytecode)
    }

    function helloWorld() public view returns (string memory) {
        // view and pure do not use case as long as state of blockchain isn't changed, view reads from the blockchain, pure does not even look at the blockchain
        // but view might use more gas if it is called from a function that does change the state. Always use pure if state of blockchain isn't changed.

        // external uses a little bit less gas (but contract won't see it)
        return text;
    }

    function setText(string memory newText) public payable { /// payable can receive ether and change state of the blockchain (default is non-payable)
    // calldata has to be static, can't be changed and is specified by the call.
    // memory can be changed during the function call
        text = newText;
    }
}