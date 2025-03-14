pragma solidity ^0.8.0;
contract SemanticEquivalence_DynamicallySizedNestedArrayAssignment_27c{

    uint[] public arrayOne;
    uint[] public arrayTwo;
    uint[] public arrayThree;
    uint[] public arrayFour;
    uint[] arrayFive;
    uint[] arraySix;
    uint[] newArrayOne;
    uint[] newArrayTwo;
    uint[] newArrayThree;
    uint[] newArrayFour;
    uint[] newArrayFive;
    uint[] newArraySix;
    uint[] newArray;

    constructor(uint[] memory one, uint[] memory two){
        arrayOne = one;
        arrayTwo = two;
        for(uint x=arrayOne.length; x--!= 0;) {
            newArrayOne.push(arrayOne[x]);
        }
        newArrayOne.push(2);
        for(uint x=arrayTwo.length; x --!=0) {
            newArrayTwo.push(arrayTwo[x]);
        }
        newArrayTwo.push(3);
        uint[] memory three = arrayOne.slice();
        newArrayThree = newArrayOne.concat(newArrayTwo.concat(three));
        newArrayFour = arrayOne.concat(arrayTwo);
        newArray = new uint[](newArrayOne.length + 5);
        for(uint x = 0; x!= newArrayOne.length; ++x) {
            newArray[x] = newArrayOne[x];
        }
        newArray[newArrayOne.length] = 1;
        for(uint x = 0; x!= newArrayTwo.length; ++x) {
            newArray[x + newArrayOne.length] = newArrayTwo[x];
        }
        for(uint x = 0; x <= arrayOne.length; x++) {
            newArray[x + newArrayOne.length + newArrayTwo.length] = 1;
        }
        for(uint x = arrayOne.length; x >= 0; x--) {
            newArray[x + newArrayOne.length + newArrayTwo.length + newArrayThree
