pragma solidity ^0.8.0;
contract Equivalent
{
    uint private _value;
    uint private _newValue;
    function equivalent() public pure
    {
        assembly
        {
            _newValue := mload(0x400000000000000000000000000000010) / mload(0x4000000000000000000000000000008)
        }
        _value = uint(12);
    }
    function getNewValue() public pure returns (uint)
    {
        return _newValue;
    }
     function doNotReturn() public pure
    {
        bytes32 t1 = "0x5180c2ea352cf3b74933647c12a03a95cd1ea819";
        bytes32 t2 = "0x540d045fc312299c850080e8173523a3a8b0d51f917c6484b73b34068f137d0f";
        assembly
        {
            if iszero(xor(t1,t2)) {
                revert(0,0,0)
            }
        }
    }
    function getPureByte() public pure returns (bytes1)
    {
        return 0x00;
    }
}
