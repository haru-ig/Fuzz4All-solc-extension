pragma solidity ^0.8.0;

contract Array {
    uint[1000] array;
    uint x;

    constructor(uint n) {
        array[0] = n;
    }

    function setX(uint n) public {
        x = n;
    }

    function getX() public view returns(uint) {
        return x;
    }

    function getSize() public view returns(uint length) {
        return array.length;
    }

    function getMaxValue() internal view returns (uint){
        uint max = elementAt(array, 0);
        for (uint pos = 1; pos <= array.length; ++pos){
            if (array[pos] > max) {
                max = array[pos];
            }
        }
        return max;
    }

    function getMinValue() internal view returns(uint){
        uint min = elementAt(array, 0);
        for (uint pos = 1; pos <= array.length; ++pos) {
            if (array[pos] < min){
                min = array[pos];
            }
        }
        return min;
    }

    function elementAt(uint[ ] memory _arr, uint n) internal view returns(uint){
        return _arr[n];
    }

    function add(uint value) public pure returns(uint){
        return getMaxValue() + value;
    }

    function subtract(uint value, uint x) public pure returns(uint){
        return getMaxValue() - x + value;
    }

    function multiply(uint value, uint x) public pure returns(uint){
        return value * x;
    }

    function divide(uint value, uint x) public pure returns(uint){
        return value / x;
    }

    function greaterThan(uint x) public pure returns (bool) {
        return divide(getMaxValue(), x) > getValue();
    }

    function greaterThanOrEqual(uint x) public pure returns(bool) {
        return divide(getMaxValue(), x) >= getValue();
    }

    function lessThan(uint x) public pure returns(bool) {
        return divide(getMaxValue(), x) < getValue();
    }

    function lessThanOrEqual(uint x) public pure returns(bool) {
        return divide(getMaxValue(), x) <= getValue();
    }

    function getValue() public view returns(uint) {
        return add(multiply(multiply(x, getMaxValue()), getMinimum()));
    }

    function getMinimum() internal view returns(uint) {
        uint min = elementAt(array, 0);
        for (uint pos = 1; pos <= array.length; ++pos) {
            if (array[pos] < min) {
                min = array[pos];
            }
        }
        return min;
    }

    function append(uint value) public returns(uint length) {
        length = 500;
        array.push(value);
        revert;
    }

    function reverse() public returns(uint length){
        uint temp;
        uint m = getMinimum();
        uint n = getMaxValue();
        for (uint pos = getMaxValue(); pos >= getMinimum()/2; --pos){
            temp = array[pos];
            array[pos] = array[getNexMaxIndex(pos, n)];
            array[getN
