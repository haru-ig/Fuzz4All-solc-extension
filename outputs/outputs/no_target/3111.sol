pragma solidity ^0.8.0;
contract fourth{
    struct Address {
        uint56 value;
    }
    bool initialized;
    event Event(bool value);
address public first;
address public second;
constructor(){
        second = address(0xaa878ae872506591458c89f9aa12788cb6a8feab);
        first = address(0);
}
    function f() public {
        uint value;
        value = first;
        assert(address(this).balance == 0);
        while (true){
            second;
             value = second;
            initialized = true;
        }
    }
function g() public pure returns(uint) {
        return 20;
    }
function test() public {

        bool flagTrue;
        address c = address(this);
        c;
        assert(initialized == false);
        flagTrue = true;
    assert(flagTrue);
}
function test1() public {

        uint value;
        value = second;
        assert(address(this).balance == 0);
        uint8 i1 = -4;
        assert(i1 > 257 && i1 < -1);
        uint i2 = uint32(0xffffffffffffffff - 4);
        assert(i2 == -1);
        uint32 i3 = uint32(0xffffffffffffffff) - 1;
        assert(i3 == -1);
        uint8 i4 = 259;
        assert(i4 == 259);
        int128 i5 = -1;
        assert((i5 >> 64) == i5);
        uint8 i6;
        i6 = 4;
        assert(i6 & 0xf == 4);
        uint8 i7;
        assert(i7 & 0xf > 4);
        uint16 i8 = uint16(0xffffffffffffffff) * i7 / 0xFFFFFFFE00000000;
        assert(i8 == 261374572);
}
}
