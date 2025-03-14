pragma solidity ^0.8.0;
contract SemanticsMismatchXulMutantContract {
    constructor () {
    }
    function g() public {
        bytes32 x;
        bytes32 y;
        assembly {
            y := mload(0x40)
            x := mload(0x40)
        }
        if(keccak256("x") == keccak256(y)) {
            x;
        }
        c();
    }
    function c() public pure {
    }
}
