pragma solidity ^0.8.0;
contract MultipleReturn9 {
    function multipleReturns10() public returns (uint, int, bytes32, bytes4) {
        return (9, 22, "test", "0000000000000000000000000000000000000000000000000000000000022");
    }
}
