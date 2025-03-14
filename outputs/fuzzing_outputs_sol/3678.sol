pragma solidity ^0.8.0;
contract MutateSemantic7Caller15 {
    function modifyA9Mutate(uint x, uint256 y) pure public returns (uint) {


        y = 1;
        return 0x0;
    }
    function modifyA10Mutate(uint x, uint y) pure public returns (uint) {


        return 0x0;
    }
}
contract MutateSemantic7Caller extends MutateSemantic7Caller4, MutateSemantic7Caller15 {
    function modifyB11Mutate(uint x, uint y) pure public returns (uint) {


        y< x;
        return 0x0;
    }
    function modifyB12Mutate(uint x, uint y) pure public returns (uint) {


        x  > y && x < 10;
        return 0x0;
    }
    function modifyB13Mutate(uint x, uint y) pure public returns (uint) {


        if( x < 10 && y == y + 1)
            return 100;
        return 0x0;
    }
    function modifyB14Mutate(uint x, uint y) pure public returns (uint) {


        x = 0 && x > y;
        return 0x0;
    }
    function modifyB15Mutate(uint x, uint y) pure public returns (uint) {


        x == x + y && x == 0;
        return 1;
    }
}
