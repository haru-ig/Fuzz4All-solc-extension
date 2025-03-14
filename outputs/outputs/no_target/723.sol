pragma solidity ^0.8.0;
contract SemanticsRevertTest {
    function semantics(bool test)
        pure
        public
    {
        (uint8 overflow1, uint8 a1) = test;
        return a1 + overflow1;
    }
    function semantics1(uint i)
        pure public
        returns (uint)
    {
        (uint8 overflow2, uint8 a2) = i;
        assert(overflow2 == 0);
        uint8 overflow3;
        uint8 a3 = 0;
        assert(uint8(a3) == 0);
        uint.fromSigned(i) + overflow3;
    }
    function semantics2(uint i)
        pure public
        returns (uint, uint a2)
    {
        (uint8 overflow3,, uint8 a3) = i;
        assert(overflow3 == 0);
        assert(a3 == 0);
        uint8 overflow4;
        uint8 a4;
        assert(uint8(a4) == 0);
        uint.fromSigned(i) + overflow4;
        uint8 overflow5;
        uint8 a5 = 0;
        (uint8 overflow6, uint8 a6) = i;
        assert(overflow6 == 0);
        assert(a6 == 0);
    }
    function semantics3(uint i)
        pure public
        returns (uint, uint8 overflow4)
    {
       (uint8 overflow5, uint8 a5) = i;
       (uint8 overflow6, uint8 a6) = a5;
       assert(overflow6 == 0);
       assert(a6 == 0);
       uint8 overflow7;
       uint8 a7 = 0;
       (uint8 overflow8,, uint8 a8) = i;
       assert(overflow8 == 0);
       return (0x123400000000000000000000000000000000000000000000000000000000, a8);
    }
    function semantics4()
        pure public
        returns (uint, uint8 a5, uint8 a6, uint8 overflow7)
    {
       (uint8 overflow3,, uint8 a3) = uint(0x12340000000000000000000000000000000000000000000
