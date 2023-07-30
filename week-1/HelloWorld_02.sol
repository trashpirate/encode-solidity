// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 <0.9.0;

contract HelloWorld {
    string private text;

    constructor() {
        text = pureText();
    }

    function helloWorld() public view returns (string memory) {
        return text;
    }

    function setText(string calldata newText) public {
        text = newText;
    }

    function pureText() public pure returns (string memory) {
        return "Hello World";
    }

    function _isPure() internal view returns (bool check_) {
        check_ = keccak256(bytes(text)) == keccak256(bytes(pureText())); // keccak256 is hashing function
    }

    function isPure() public view returns (bool returnValue_) { /// underscore after for return values
        // calling internal function is call encapsulation
        returnValue_ = _isPure(); // using a return would halt execution
        // return returnValue; already included
    }

    function _restore() internal {
        text = pureText();
    }

    modifier onlyWhenNotPure() {
        require(!_isPure(), "value is already pure text"); // 
        _; // this symbol determins whether before or after function the modifier is executed
    }

    function restore() public onlyWhenNotPure returns (bool) {
        // require(!_isPure(), "value is already pure text"); // require, assert, revert have all same effect but: assert for rare occations, require more probable
        
        
        if (_isPure()) return false; // this spends gas every time it's called
        _restore();
        return true;
    }

    function sampleAddress() public view returns (address){
        return  msg.sender; // returns the address calling the function
    }

    function sampleValue() public payable returns (uint256) { /// needs to be payable to show value
        return msg.value;
    }
}