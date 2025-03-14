pragma solidity ^0.8.0;
contract Mut8 {
    function _mutateB(bytes32 key, Mut7.B value) private {
        _storage[key] = value;
    }
}
