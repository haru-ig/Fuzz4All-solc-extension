pragma solidity ^0.8.0;
contract semanticallyEquivalent
{
    uint public a;
    uint public b;
    uint public c;
    constructor ()public{
        a = 3;
        b = 4;
        c = 5;
    }
    function test() public payable {
        require(a*b - c*a == 7);
    }
    function test2() public payable {
        require((a + b*c)/a == 16);
    }
}
