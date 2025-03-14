pragma solidity ^0.8.0;
contract semanticallyequivalent
{
    function f(uint y) public pure
    {
    y = y + 1;
    }
}


pragma solidity ^0.8.0;
contract semanticallyequivalent
{
    function f(uint y) private pure
    {
    uint z;
    z = y + 1;
    this.f(z);
    }
}
