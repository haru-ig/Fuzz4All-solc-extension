pragma solidity ^0.8.0;
contract ExampleArray7{
    uint public myArray[10];
    constructor() {
        myArray[0] = 5;
        myArray[1] = 3;
        myArray[2] = 4;
        myArray[3] = 3;
        myArray[4] = 2;
        myArray[5] = 6;
        myArray[6] = 7;
        myArray[7] = 1;
        myArray[8] = 0;
    }
    function MyFunction() public pure{
        uint myLength = 10;
        require(myArray[myLength-1]==myLength);
        for (uint i = myLength-1; i >= 0; --i) {
            uint myVal = myArray[i];
            require(myVal >= 0 && myVal < 10);
            require(myVal!= 9);
        }
    }
}
