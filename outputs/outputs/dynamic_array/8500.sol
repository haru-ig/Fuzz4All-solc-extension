pragma solidity ^0.8.0;
contract SimpleStorage {
    uint public x;
    function func() public returns (uint) {
        return x;
    }
}
