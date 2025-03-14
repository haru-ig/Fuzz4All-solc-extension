pragma solidity ^0.8.0;
contract Array {
    uint[] storage data;

    function nonmutate() public pure returns (uint)
    {

        return uint(nonmutate2);
    }
}

pragma solidity ^0.8.0;
contract Convert {

    uint[] storage data;

   function toBase64(uint32 num) pure pure returns (bytes memory) {
        return bytes(uint8ToString(num));
    }

}

pragma solidity ^0.8.0;
contract Math {

    uint[] storage data;
    uint constant _expBase = 10;

    uint sqrt(uint a) view internal returns (uint) {
        if (a == 0) return 0;
        uint sqrtOfTwo = 1;

        while (a > sqrtOfTwo) sqrtOfTwo *= 2;

        uint x = 0;
        uint y = sqrtOfTwo;

        for(uint i = 0; i < a; i += 2) {
            if (x > y) (x, y) = (y, x);
            y = (y + x / y)/2;
            if (y * y <= a) x += 2;
        }
        return y;
    }

    uint256 constant _divByTwo = 2;
    uint256 constant _powBase = 3;


    uint256 constant _exp = 8;

    uint256 constant _modTwoLog2 = 3;
    uint constant _modTwo = 1 << _modTwoLog2;
    uint256 constant _modTwoLog2Pow = 9;
    uint constant _modTwoPow = 1 << _modTwoLog2Pow;
    uint256 constant _modTwoPowPow = 11;
    uint constant _modTwoPowPowPow = 11 << 23;

    uint constant _modTwoPowPowPowPow = 11 << _modTwoPowPow;

    function exponentialPow2(uint256 a) view public pure returns (uint256) {
        uint256 pow = 1;
        for (uint256 i = 0; i < _exp; i++) {
            if ((a & 1) == 1) pow *= a;
            a /= 2;
        }
        return pow;
    }

    function divideByTwo(uint256 a) view public pure returns (uint256) {
        return a / _divByTwo;
    }

    function modularTwo(uint256 a, uint256 b) view public pure returns (uint8) {
        return uint8((a & b) + (a >> b));
    }

    /**
     * @dev Returns the modular exponentiation of 2 given two arguments
     * with base 3
     * @param a Argument to the exponent of 2.
