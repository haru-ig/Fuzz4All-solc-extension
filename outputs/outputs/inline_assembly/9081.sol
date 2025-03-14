pragma solidity ^0.8.0;
library Lib
{
    function add(uint a, uint b) public pure returns (uint) {
        return (a + b);
    }
    function div(uint a, uint b) public pure returns (uint) {
        return (a / b);
    }
    function mul(uint a, uint b) public pure returns (uint) {
        return (a * b);
    }
}
contract C
{
    address payable owner_;
    uint x;
    constructor()
    {
        x = 0;
        owner_ = msg.sender;
    }
    modifier onlyOwner()
    {
        require(msg.sender == owner_, "onlyOwner");
        _;
    }
    function func() public onlyOwner returns (uint)
    {
        x += 1;
        return x;
    }
}
contract GangOfFour
{
    C[] vanguard;
    constructor() public
    {
        address guard1 = msg.sender;

        address guard2 = msg.sender;
        address guard3 = msg.sender;
        uint y = 2;

        address guard4 = msg.sender;
        address guard5 = msg.sender;
        uint z = 5;

        vanguard.push(new C());
        vanguard[0].func();
        vanguard[0].add(1);
        vanguard[0].div(4);
        vanguard[0].mul(3);

        vanguard.push(new C());
        vanguard[1].func();
        vanguard[1].add(2);
        vanguard[1].div(6);
        vanguard[1].mul(8);
    }
}
contract GangOfFour16
{
    struct GangOfFour
    {
        uint[] x;
        uint a;
        uint b;
        uint c;
    }
}
contract GangOfFour9
{
    uint[] x;
    uint a;
    uint b;
    uint c;
}
contract GangOfFour17
{
    uint[] x;
    uint a;
    uint b;
    uint c;
}
contract GangOfFour1
{
    uint x;
    Gang
