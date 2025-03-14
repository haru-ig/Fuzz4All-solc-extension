pragma solidity ^0.8.0;
library Mutate{
    function setVariable(byte[] storage _storage) public pure returns(uint) {
        _storage[3] = 0xFF;
    }
}
