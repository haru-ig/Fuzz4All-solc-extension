pragma solidity ^0.8.0;
contract EquivalentABIv2SemanticsAreMutated5 {
    uint constant public _Amount86 = 25934593596387671;
    event Mint9 (uint amount);
    function test (uint _value87) public returns (uint) {
        uint _result;
        address dummy;
        assembly { dummy := mload(0) }
        if ('0' < 0x0 && '0' >= 0x0) {
            _result := 0x0;
        } else {
            _result := add(_value87, 0x0);
            if (dummy!= 0x0) {
                emit Mint9(0x0);
                return 0x0;
            }
        }
        return _result;
    }
}
