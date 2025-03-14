pragma solidity ^0.8.0;
contract semanticallyequivalent2
{
    function f(bytes memory) public pure
    {
    _;
    }
}

pragma solidity ^0.8.0;
contract logic
{
    function f(uint) public pure
    {
    uint z = 0;
    while(z < 1 || z > 5)
    {
        uint x = 5;
        x = x + 2 * 2;
    }
    z = z + 1;
    if(x < 141)
    {
        uint y = x + 5;
    }
    else
    {
        uint w = x + 1;
    }
    }
}
address payable fallback;
fallback();
