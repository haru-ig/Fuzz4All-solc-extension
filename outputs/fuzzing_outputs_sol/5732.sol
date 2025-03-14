pragma solidity ^0.8.0;
contract semanticallyequivalent20 is semanticallyequivalent19
{
    uint public x;
    uint public y;
    uint public z;
    uint public a;
    modifier z_less_than_20() {
        require(x<z*20, "Invalid zero condition");
        _;
    }
    function test() public payable z_less_than_20 {
       x = x+2;
    }
}

contract semanticallyEquivalent
{
    function test() public {
        semanticallyequivalent19 v1;
        semanticallyequivalent20 v2;
    }
}

contract semanticallyEquivalentCaller
{
    function test() public {
        semanticallyEfficientCaller v;
        v.test();
    }
}

contract semanticallyEquivalentCaller2
{
    function test() public {
        semanticallyEfficientCaller2 v;
        v.test();
    }
}
