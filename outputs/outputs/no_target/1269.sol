pragma solidity ^0.8.0;
contract Mutate_0003
{
    function test() public
    {
        uint x = 2**255;
        require(x == 0, "");
    }
}

pragma solidity ^0.8.0;
contract Mutate_0004
{
    function test() public pure returns(uint)
    {

        return empty_stmt_0_0;
    }
    uint empty_stmt_0_0;
}

pragma solidity ^0.8.0;
contract Mutate_0005
{
    function test() public pure returns(uint)
    {
        uint x;
        (x, x, x) = (uint(uint(13)) + uint(uint(0)), uint(uint(13)) + uint(uint(12)), uint(uint(13)) + uint(uint(123))));
        (x, x, x) = (uint(uint(13)) + uint(uint(123)), uint(uint(13)) + uint(12), uint(uint(13)) + uint(123245)));
        (x, x, x) = (uint(uint(13)) + uint(123245), uint(uint(13)) + uint(1234), uint(uint(13)) + uint(123567)));
        (x, x, x) = (uint(uint(13)) + uint(123567), uint(uint(13)) + uint(123568), uint(uint(13)) + uint(1235689));
        (x, x, x) = (uint(uint(13)) + uint(1235689), uint(uint(13)) + uint(12345), uint(uint(13)) + uint(12356789));
        (x, x, x) = (uint(uint(13)) + uint(123
