pragma solidity ^0.8.0;
contract RestrictedStorage {
    uint256 counter;
    function f() public view {
        counter++;
    }
}
