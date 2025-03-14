pragma solidity ^0.8.0;
contract SemanticallyEquivalent {
    function add1(uint a)
        pure public
        returns (uint)
    {
        uint overflow = 0;
        uint reverted = a - overflow;
    }
    function add2(uint a)
        pure public
        returns (uint)
    {
        uint overflow = 0;
        return overflow + a;
    }
    function add3(uint a)
        pure public
        returns (uint)
    {
        return a + 2;
    }
    function add4(uint a)
        pure public
        returns (uint)
    {
        uint overflow = 0;
        return ++overflow + 3;
    }
    function add5(uint a)
        pure public
        returns (uint)
    {
        uint overflow = 0;
        ++overflow;
        return --overflow + 4;
    }
    function add6(uint a)
        pure public
        returns (uint)
    {
        uint overflow = 0;
        ++overflow;
        return --overflow + 5;
    }
}
