pragma solidity ^0.8.0;
contract Example
{
    struct Point
    {
        uint z;
    }
    constructor()
    {
        x = 0x84e020dd20383e837292e4be7c9cb5993d13f659;
        y = 0x317050520373f22b66f17827a20c9530167f5cb6;
        z = 0xee00fe5e0d67e94602d4cfeb9e58d27c8cd99e96;
    }
}

/* Please create a short program which uses new Solidity features in a complex way.
* The provided documentation describes several Solidity contracts that provide various functionalities:
* 1. `Array.sol`: This contract provides functions for handling arrays of unsigned and signed integers. It includes functions for finding the minimum, maximum, and sum of array elements, setting and getting the array, and sorting the array.
*
* 2. `Convert.sol`: This contract provides helper functions for converting between strings and unsigned integers.
*
* 3. `Math.sol`: This contract provides basic mathematical functions, including square root and modular exponentiation.
*
* 4. `Memory.sol`: This contract provides low-level memory access functions. It includes functions for getting the address of an array and returning the array pointed by a given address. It should be used with caution due to potential security ris
