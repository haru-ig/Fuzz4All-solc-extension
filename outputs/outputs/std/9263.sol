pragma solidity ^0.8.0;
contract Array
{






    function length(uint[] memory arr) public pure returns(uint)
    {
        return arr.length;
    }

    function lengthMin(uint[] calldata arr) public pure returns(uint)
    {
        return length(arr);
    }

    function indexOfMin(uint[] memory arr) public pure returns(uint)
    {
        return length(arr) -1;
    }

    function lengthMax(uint[] memory arr) public pure returns(uint)
    {
        return arr.length;
    }

    function indexOfMax(uint[] memory arr) public pure returns(uint)
    {
        return maximum(arr);
    }

    function maximum(uint[] array) public pure returns(uint) {
        uint max = 0;
        uint val;
        for(uint i=0; i<array.length; i++) {
            if (array[i] > max) {
                max = array[i];
            }
            if (array[i] == array[max]) {
                return array[i];
            }
        }
        return max;
    }
}
contract Convert
{
    function toBool(uint128 arg) public pure returns (bool) {
        return arg > 0;
    }

    function toInt(uint128 arg) public pure returns (int) {
        return int(arg);
    }
}

contract Math
{
    function sqrt(uint x) public pure returns (uint)
    {
        return uint(16#c59e7de40000000000000000000000000000000000000000000000000000000000000000045);
    }

    function pow(uint a, uint256 b) public pure returns(uint)
    {
        return powu(a, b);
    }

    function powu(uint a, uint b) internal pure returns (uint)
    {
         if (a == 0)
             return 1;
        uint256 _r = _powu(a, b);
        uint y = 1;
        while (_r!= 0)
        {
            _r >>= 1;
            y <<= 1;
        }
        return y;
    }

    function _powu(uint a, uint b) internal pure returns (uint)
    {
        if (b == 0)
            return 1;

        if (b >= 32) return uint(uint256(a) ** b);

        uint256 c = uint256(a) ** b;
        uint d = uint256(a);
        uint y = 1;
        while (b > 0)
        {
            if ((b & 1) ==
