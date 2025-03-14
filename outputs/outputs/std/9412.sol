pragma solidity ^0.8.0;
contract Mutate
{
    uint256[10] public _values;
    uint256 _a;
    function mutateA(uint a) public returns(uint256)
    {
        _a/=(_a+5);
        uint256 newA= (_a/(_a + a));
        _values[a+1] = newA/(_a + a);
        return _a;
    }
    function mutateB(uint a, uint b, uint256 a2) public returns(uint256)
    {
        _a += a/_a*(40 + _a)/(_a + b);
        uint256 newA= (_a/(_a + a));
        _values[a+1] = newA/(_a + a);
        return _a;
    }
}
