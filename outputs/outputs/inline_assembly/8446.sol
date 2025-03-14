pragma solidity ^0.8.0;
contract Modulu
{
    uint  a;
    mapping(uint => uint) b;

    function test222() public
    {
        a=2;
        b[a]=1;
        require(a==1);
    }
}
