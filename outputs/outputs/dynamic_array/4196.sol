pragma solidity ^0.8.0;
contract G {
    uint[300] public arr1 = uint[]( 300 );
    uint arr2 = uint[]( 300 );
    constructor(uint input) public {
        arr1 = uint[]( 300 );
        arr2 = uint[]( 300 );
         arr2[863] = input;
         uint[300] memory prev = arr1;
        arr1[75] = input;
        arr1[163] = input;
        arr1[251] = input;
    }
}
