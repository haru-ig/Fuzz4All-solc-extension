pragma solidity ^0.8.0;
contract Mutate
{
    uint256 public _a = 5;
    uint256[10] public _values;
    function mutateA(uint x) public returns(uint256)
    {
        _a /= (_a/(_a + 5));
        _values[x + 1] = _a/(_a + 5);
        return _a;
    }
    function mutateB(uint256 a, uint256 b, uint x) public returns(uint256)
    {
        _a += a/b/_a*(40 + _a)/(_a + 15);
        _values[x + 1] = _a/(_a + 5);
        return _a;
    }
}
