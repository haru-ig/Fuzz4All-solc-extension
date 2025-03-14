pragma solidity ^0.8.0;
contract MultiArray
{
    function() external {

        assembly {

            sstore 23, 2
            sstore 24, 1
            sstore 25, 0
            sstore 26, 5
            sstore 27, 1
            sstore 28, 1
            sstore 29, 1
            sstore 30, 4
            sstore 31, 5


            sstore 1, 3
            sstore 3, 0
            sstore 4, 4
            sstore 5, 5


            sstore 1, 3
            sstore 2, 6
            sstore 18, 7
            sstore 1, 2
            sstore 2, 7
            sstore 18, 5
            sstore 31, 5


            mload 3
            mstore0 1


            sstore 25
