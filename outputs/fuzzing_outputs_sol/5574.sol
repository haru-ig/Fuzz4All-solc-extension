pragma solidity ^0.8.0;
contract semanticallyequivalent_gen8
{
    function f(bytes calldata) public pure {}
}

pragma solidity ^0.8.0;
contract semanticallyequivalent_gen9
{

    function() public {

    }
}
contract semanticallyequivalent_gen10
{
    function f() public pure
    {
        return;
    }
}
contract semanticallyequivalent_gen11
{
    function f(address) public pure
    {
        return;
    }
}
contract semanticallyequivalent_gen12
{
    function f(address) public pure
    {
        return;
    }
    function g() public pure
    {
        return;
    }
}
contract semanticallyequivalent_gen13
{
    function f() public pure {
        return;
    }
    function g() public pure {
        return;
    }
}
contract semanticallyequivalent_gen14
{
    address payable[2] _payable;
    function f() public payable {
        return;
    }
    function g() public pure {
        return;
    }
    function h() public pure payable {
        return;
    }
    function i() public pure {
        return;
    }
    function j() public pure payable
    {
        return;
    }
    function k() public pure
    {
        return;
    }
    function l() public pure {
        return;
    }
}
contract semanticallyequivalent_gen15
{
    uint[2] i;
    constructor() public { i[1] = 1; }
}
contract semanticallyequivalent_gen16
{
    uint8[136] i;
}
contract semanticallyequivalent_gen17
{
    uint128[2] i;
    constructor() public { i[1] = 0x8000000000000000000000000000000000000000000000000000000000000000; }
}
contract semanticallyequivalent_gen18
{
    uint256[2]
