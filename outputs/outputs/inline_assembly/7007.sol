pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract OptimizelyExample89AlgebraicEquiv2 {
    uint256 public myCounter = 1;
    constructor() {
        myCounter++;
        if (myCounter) {
            myCounter = myCounter + 1;
        } else {
            myCounter = myCounter + 1;
            increment();
        }
    }
    function increment2(   ) public {
        myCounter++;
        if (myCounter) {
            myCounter = myCounter + 1;
        } else {
            myCounter = myCounter + 1;
            increment();
        }
    }
    function setMyCounter3(   ) public {
        myCounter = myCounter + 1;
        if (myCounter) {
            myCounter = myCounter + 1;
        } else {
            myCounter = myCounter + 1;
            increment2();
        }
    }
    function test2(   ) public {
        myCounter = myCounter + 1;
        if (myCounter) {
            myCounter = myCounter + 1;
        } else {
            myCounter = myCounter + 1;
            increment2();
            setMyCounter3();
        }
    }
}
