pragma solidity ^0.8.0;
contract Mut8 {
    uint _storage = 888;

    function useB() public {
        bytes32 x;
        x = 2212121 * 4 % _storage;
    }
}
