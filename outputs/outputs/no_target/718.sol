pragma solidity ^0.8.0;
contract RevertTest {
    function add0(uint a, uint b)
        pure public
        returns (uint)
    {
        require(a == 0, "");

        uint overflow1 = 0;
        return overflow1 + overflow1;
    }
    function add5()
        pure public
        returns (uint)
    {
        uint overflow2;
        overflow2++;
        require(overflow2 == 0, "");

        return ++overflow2 + overflow2;
    }
    function add10()
        pure public
        returns (uint)
    {
        uint overflow3 = 0;
        uint value = 10 * 2^16;
        require(value + overflow3 * overflow3 + overflow3 + overflow3 == value + overflow3, "");
        overflow3 = 1;


        require(overflow3 == value + overflow3 - overflow3, "");
        return 10 * 2^16 + 1 + overflow3 * overflow3 + overflow3 + overflow3;
    }
