pragma solidity ^0.8.0;
contract Caller
{
    fallback6 _fallback;
    bytes4 constant _callA = 0x06fdde01;
    address testAddr;
    constructor() {
        _fallback = Fallback6(0x00000000000000000000000000000000000000);
    }
    function f6() public view
    {
        c(1);
        c(2);
        d(1);
    }
    function f5() public view {
        a(a);
        a(b);
    }
    function f3() public view
    {
        a(0x000000000000000000000000000000000000000);
        a(0x00000000000000000000000000000000000000001);
        b(address(0));
        b(address(1));
    }
    function f4() public payable
    {

        c(0xFF);
        c(0xE0);
    }
    function f(uint x) public
    {
        c(_callA);
        c(x);
        a(address(this));
        a(0x0123456789abcdef0123456789abcdef0123456789);

        a(address(this));
    }
}
