pragma solidity ^0.8.0;
contract Contract2
{
    mapping(uint =>uint) mapOfArray;
    uint[] arrOfBigNumbers;
    uint[] arrOfBigNumbers2;
    uint[] arrOfBigNumbers3;
    uint[] arrOfSmallNumbers;
    uint[] arrOfSmallNumbers2;
    uint[] arrOfLargeNumbers1;
    uint[] arrOfLargeNumbers2;

    function arrayOfBigNumbers() public returns(uint) {
        return arrOfBigNumbers.length;
    }
    function arrayOfBigNumbers2() public returns(uint) {
        return arrOfBigNumbers.length;
    }
    function arrayOfBigNumbers3() public returns(uint) {
        return arrOfBigNumbers.length;
    }
    function arrayOfSmallNumbers() public returns(uint) {
        return arrOfSmallNumbers.length;
    }
    function arrayOfSmallNumbers2() public returns(uint) {
        return arrOfSmallNumbers.length;
    }
    function arrayOfLargeNumbers1() public returns(uint) {
        return arrOfLargeNumbers1.length;
    }
    function arrayOfLargeNumbers2() public returns(uint) {
        return arrOfLargeNumbers2.length;
    }
    function add_3() public {
        uint length = arrOfBigNumbers.length;
        arrOfBigNumbers.push(length);
        return;
    }
    function remove() public{
        mapOfArray.remove(arrOfBigNumbers.length-1);
        uint length = arrOfBigNumbers.length;
        arrOfBigNumbers.pop();
        return;
    }
}
