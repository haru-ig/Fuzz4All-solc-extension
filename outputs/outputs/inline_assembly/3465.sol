pragma solidity ^0.8.0;
contract ChangeMutagenMod3 {
    uint constant ZERO = 0;
    uint constant ONE = 1;
    uint constant TWO = 2;
    uint constant THREE = 3;
    modifier onlySet(uint _value) {
        (uint y, uint x) = (uint(0, 0) >> 24 | uint(0, 0) >> 16 | uint(0, 0) >> 8 | uint(0, 0), uint(0, 0));
        uint temp;
        assembly {
              temp := 0xFF00000000000000000000000000000000000000000000000000000000000000
        }
        uint temp2;
        assembly {
              temp2 := 123456789012345678901234567890123456789012345678901234567890123456
              ;
        }
    }
    function change3 (bool _value) public onlySet(_value) {
        (uint y, uint x) = (uint(0, 0) >> 24 | uint(0, 0) >> 16 | uint(0, 0) >> 8 | uint(0, 0), uint(0, 0));
        _value = ZERO;
    }
}
