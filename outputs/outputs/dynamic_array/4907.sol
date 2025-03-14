pragma solidity ^0.8.0;
contract Test66 {
    constructor() {
        bool[8] array1;
        bool[8] array2;
        bool[8] array3;
        for(uint i=0; i<8; i++){
            uint32 count1 = 2*i + 3;
            uint32 count2 = 2*i+4;
            uint32 count3 = 2*i+5;
            require( array1.length == count1, "wrong length of array1" );
            require( array2.length == count2, "wrong length of array2" );
            require( array3.length == count3, "wrong length of array3" );
        }
    }
}
