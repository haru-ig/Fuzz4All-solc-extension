pragma solidity ^0.8.0;
contract Mutater4 {
    uint32 internal _value;
    function mutatedFunction() public {
        if (_value == 0) {
            _value = 1000;
        }
        _value = 0;
    }
}
