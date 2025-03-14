pragma solidity ^0.8.0;
contract Mutater5 {
    uint32 internal _value;
    uint32 public _gas;
    function mutatedFunction() public {
        if (_value == 0) {
            _value = 1000;
        }
        _value = 0;
        _gas = msg.gas;
    }
}
