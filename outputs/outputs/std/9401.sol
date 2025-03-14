pragma solidity ^0.8.0;
contract Mutate2 is Mutate
{
    uint256[5] public _values;
    function mutateC(uint256 a, uint b, uint x, bool add) internal returns(uint256)
    {
        if(add)
         _values[x + 1] = a/a;
        else
         _values[x + 1] = a/a - b;
        return x/a;
    }
    function mutateD(uint256 a, uint256 b, uint x, bool add) internal returns(uint256)
    {
        if(add)
         _values[x + 1] = _values[x] + a/a;
        else
         _values[x + 1] = _values[x] + a/a - b;
        return _values[x]/a;
    }
}

pragma solidity ^0.8.0;
contract Mutate3
{
    uint256[5] public _values;
    function mutateE(uint256 a, uint b, uint c, uint x, bool add) internal returns(uint256)
    {
        if(add)
         _values[x + 1] = a/a;
        else
         _values[x + 1] = a/a - b;
        if(add)
         _values[x + 2] = b/b;
        else
         _values[x + 2] = b/b - c;
        return _values[x]/a/b/c;
    }
}
