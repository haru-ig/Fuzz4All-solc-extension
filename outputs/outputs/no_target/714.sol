pragma solidity ^0.8.0;

contract RevertTest {

    function add0(uint a, uint b)
        pure public
        returns (uint)
    {
        uint overflow1 = 0;

        return overflow1 + overflow1;
    }

    function add5()
        pure public
        returns (uint)
    {
        uint overflow2;

        return ++overflow2 + overflow2;
    }


    function add10()
        pure public
        returns (uint)
    {
        uint overflow3 = 0;

        return 10 * 2^32 + 1 + overflow3 * overflow3 + overflow3 + overflow3;
    }
}
