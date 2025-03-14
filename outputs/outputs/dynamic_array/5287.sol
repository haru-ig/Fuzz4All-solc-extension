pragma solidity ^0.8.0;
contract Test30 {
    function f(bytes[5] memory) public pure {
        for (uint i = 5; i < 10; i++){
            f(bytes32(uint256(i)))
        }
    }
}
