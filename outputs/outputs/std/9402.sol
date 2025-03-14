pragma solidity ^0.8.0;
contract Mutate
{
    bytes32 _values;
    function mutateA(uint a, uint x) internal returns(uint256)
    {
        _values[x + 1] = bytes32(a*a);
        return x;
    }
    function mutateB(uint a, uint b, uint x) internal returns(uint256)
    {
        bytes32 c;
        assembly {
            c := add(_values, 0x00000000000000000000000000000000000000002)
        }
        _values[x + 1] = c + bytes32(a*b);
        return x;
    }
}
