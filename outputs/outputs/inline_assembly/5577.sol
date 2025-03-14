pragma solidity ^0.8.0;
contract ConstantAccessBlock07 {
    function test() public returns (bool) {
        uint _value;
        uint _originalValue;
        assembly {
            _value := add(mload(0x20), 0x1):111111111111110001:1
            _originalValue := mload(0x20)
        }
        return (_value == _originalValue)? true : false;
    }
}
