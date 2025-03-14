pragma solidity ^0.8.0;
contract RevertTest {
    function add6(uint a)
        pure public
        returns (uint)
    {
        uint overflow1 = 0;
        return overflow1 > 0 + ++overflow1;
    }
    function add20()
        pure public
        returns (uint)
    {
        uint overflow2 = 0;
        return overflow2 < 0 > (10 * 2^32 + 2 + (overflow2 > overflow1));
    }
    function add64()
        pure public
        returns (uint)
    {
        uint overflow3 = 0;
        return (overflow3 + overflow3 + overflow3) % (overflow3 + overflow3 + overflow3 % (overflow3 + overflow3 + overflow3 + overflow3 % overflow3));
    }
}
