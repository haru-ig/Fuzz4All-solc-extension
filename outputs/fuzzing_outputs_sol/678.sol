pragma solidity ^0.8.0;
contract Caller4
{
    uint256 constant ETHER = 1.0 finney;
    uint256 public testValue0;

    function fallback() payable external {
        storage.set(testValue0, ETHER);
    }

    struct Storage
    {
        uint256 testValue;
    }

    Storage public storage;

    function get() public view returns (uint256) {
        return storage.get(testValue0);
    }
}
