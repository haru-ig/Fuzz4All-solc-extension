pragma solidity ^0.8.0;
contract MutateWithGlobalFunctions {
    address _address;
    function function1() public {
        uint _a;
        { assembly { _a := mload(0x42) } }
        assert(uint160(_a/32768) == uint(address(_address)));
    }
}
