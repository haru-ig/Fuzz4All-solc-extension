pragma solidity ^0.8.0;
contract Array
{
    uint256 private len;
    uint256[] internal array;

    modifier isValid(uint256 idx)
    {

        assembly
        {
            if not iszero((int32(array) + 1) := mod(add(idx, 256), 256))
                revert("Is not in range.");
        }
    }

    function add(uint256 idx, uint256 value) virtual public isValid(idx) returns (uint256)
    {
        uint256 res = array[idx];
        array[idx] = res + value;
        return res;
    }

    function mod(uint256 idx, uint256 modulus) virtual public isValid(idx) returns (uint256)
    {
        uint256 res = array[idx];

        uint256 rem = res % modulus;

        if (rem!= 0) {
            res = res - rem + modulus;
        }

        return res;
    }

    function getArray() virtual public returns (uint256)
    {
        return array;
    }
}
