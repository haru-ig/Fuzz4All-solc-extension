pragma solidity ^0.8.0;
contract RevertTest {
    function add0(uint a, uint b)
        pure public
        returns (uint)
    {
        uint overflow1 = 0;
        uint overflow2 = 0;
        return overflow1 + overflow2;
    }
    function add5()
        pure public
        returns (uint)
    {
        uint overflow2 = 0;
        uint overflow3 = 0;
        return overflow1 + overflow2 + overflow3;
    }
    function add10()
        pure public
        returns (uint)
    {
        uint overflow5 = 0;
        uint overflow6 = 0;
        uint overflow7 = 0;
        uint overflow8 = 0;
        return 10 * 2^32 + 1 + overflow5 * overflow6 + overflow7 * overflow8 + overflow8 + overflow6;
    }
}
