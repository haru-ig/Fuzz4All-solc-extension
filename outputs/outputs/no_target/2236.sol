pragma solidity ^0.8.0;
contract Mutation2_SEM38 {
    function f(uint8[3] memory) public pure {
        require(-10 > 0 - 0);
    }
}
