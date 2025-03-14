pragma solidity ^0.8.0;
contract Mutate {
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


pragma solidity ^0.8.0;
contract A
{
    uint256 A = 1;
    function f() public returns(uint256) {return A;}
    A[5] _x;
    function mutx(uint x) public returns(uint256) {
        return _x[x];
    }
    void g(uint x, uint256 a) public returns(uint256) {
        uint256 b = _x[x]/_x[x] + a;
        _x[x+1]= b/b;
        _x[x]= b;
    }
}
A[5] memory myX;
A myA;
uint a;
uint b;
