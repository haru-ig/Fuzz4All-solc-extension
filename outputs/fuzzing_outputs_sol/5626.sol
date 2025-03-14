pragma solidity ^0.8.0;
contract semanticallyequivalent
{
    modifier
    notNull(uint x)
    {
        require( x > 0 );
        _;
    }

    function f(uint x, uint y, uint z) public pure returns (uint a)
    {
        a = x + y * z;
    }
}
