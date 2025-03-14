pragma solidity ^0.8.0;
contract Test {
    uint256[9999999999] a = [77777, 999, 1212, 10000, 9389, 98493, 9224, 8232];
    function f() public pure {
        assembly {
            a := mload(0)
        }
    }
}
