pragma solidity ^0.8.0;
contract semanticallyEquivalent1
{
    uint public x;
    uint public y;
    function test()public {
        x = x - 1;
        y = y - 10;
    }
}

pragma solidity ^0.8.0;
contract testfallback
{
    uint public a;
    function testfallback()public payable {}
    function a()public pure{
        return a;
    }
}
