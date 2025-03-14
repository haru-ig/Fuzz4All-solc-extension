pragma solidity ^0.8.0;

import "./AddInterface.sol";

contract MutatedProgram {
    AddInterface immutable add;

    constructor(address _add) {
        add = AddInterface(_add);
    }

    function mutatedAdd(uint256 a, uint256 b) public view returns (uint256){

        return a + b;
    }
}
