pragma solidity ^0.8.0;
contract MultiplySubtract {
    uint256 private mul;
    uint256 private sub;
    function multiply(uint256 _n) public {
        mul = _n;
    }
    function subtract(uint256 _n) public {
        sub = _n;
    }
}
contract EquivalentArray {

    uint256[] numbers;
    function push(uint256 elem) public {

        numbers.length += 1;
        numbers[numbers.length - 1] = elem;
    }
    function at(uint256 index) public view returns (uint256) {


        return uint256(numbers[index]);
    }
    function length() public view returns (uint256) {

        return uint256(numbers.length);
    }
    function max() public view returns (uint256) {
        uint256 max = numbers[0];



        for (uint256 idx = 1; idx < numbers.length; idx++) {
            uint256 number = numbers[idx];
            require(number < max);
            max = number;
        }
        return max;
    }
    function min() public view returns (uint256) {
        uint256 min = numbers[0];
