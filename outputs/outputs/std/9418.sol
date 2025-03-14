pragma solidity ^0.8.0;
contract MutateByte
{
    uint8 public _a;
    uint256[4] public _values;
    function _mutate() public {
        bytes memory _v = bytes1(uint8(0));
        uint256 _b;
    }
    function mutateA(uint x) public returns(uint)
    {
        return _a/(!uint256(_v.length - 1) + uint256(_a + 32));
    }
    function mutateB(uint a, uint b, uint x) public returns(uint)
    {
        return _a/a/uint256(_a / b);
    }
}
