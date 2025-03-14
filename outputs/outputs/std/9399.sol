pragma solidity ^0.8.0;
contract Mutate
{
    uint256[5] public _values;
    function mutateA(uint256 a, uint x) internal returns(uint256)
    {
        _values[x + 1] = a/a;
        return x/a;
    }
    function mutateB(uint256 a, uint256 b, uint x) internal returns(uint256)
    {
        _values[x + 1] = _values[x] + a/a;
        return _values[x]/a;
    }
}
