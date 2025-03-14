pragma solidity ^0.8.0;
contract mutation0
{
    function mutation0(uint128 a) internal pure returns (uint128)
    {
        return modmod(a, 4);
    }
}
contract mutation1
{
    function mutation1(uint128 a) internal pure returns (uint128) {
        return modmod64(a, 4, 5);
    }
}
contract mutation2
{
    function mutation2(uint128 a) internal pure returns (uint128) {
        return modmod2444(a, 4, 5);
    }
}
contract mutation3
{
    function mutation3(uint128 a) internal pure returns (uint128) {
        return mod(a, 4);
    }
}
contract mutation4
{
    function mutation4(uint128 a) internal pure returns (uint128) {
        return mod(a, 4 * 5);
    }
}
contract mutation5
{
    function mutation5(uint128 a) internal pure returns (uint128) {
        uint128 x = a / 2;
        return mod(uint128(x), 4 * 5
