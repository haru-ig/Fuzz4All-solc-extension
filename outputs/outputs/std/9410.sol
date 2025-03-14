pragma solidity ^0.8.0;
contract Mutate
{
    mapping (bytes32=>bool) public _a;
    bytes32[] public _array;
    uint16[] public _array1;
    function mutateA(uint x, uint256 a) public returns(uint256)
    {
        _a[x] = true;
        return _a[x];
    }
}
