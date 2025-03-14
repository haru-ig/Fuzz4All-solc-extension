pragma solidity ^0.8.0;
contract ContractWithNewModifiers {
    uint32 internal counterToOverflow;
    constructor() {
        counterToOverflow = 0;
    }
    function valid(uint32 input) public view valid(input+1) private {

    }
}
