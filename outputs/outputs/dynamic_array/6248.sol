pragma solidity ^0.8.0;
interface A
{
    function foo() external returns (uint256);
}
contract B
{
    function bar() public
    {
        uint256[] memory a;
        a.push(uint256(5));
        I(msg.sender).foo();
        a.push(7);
        uint256 x = a[2];
        assert(x == 7);
        uint256 y = a.length;
        uint256 z = b.foo();
        c = z;
    }
    function b() public
    {
        uint256[] memory b;
        uint32 x = b.length;
        b.push(uint256(5));
        I(msg.sender).foo();
        uint256 y = b.length;
        assert(y == 4);
        uint256 z = a.length;
        uint256 w = z;
        uint256 v = I(msg.sender).foo();
        uint256[] memory i = new uint256[](uint32(v));
        uint256 ww = i[2];
        b.push(7);
        uint256 xxxx = b.length;
        uint256 xxx = b.length;
    }
    function c() public
    {
        uint256[] memory c;
        uint64 x = c.length;
        c.push(x);
        I(msg.sender).foo();
        uint256 y = c.length;
        assert(y == 1);
    }
}
