pragma solidity ^0.8.0;
contract Array {
    uint256[] public numbers;
    uint256 public storedValue;
    constructor (uint256 initialValue) { numbers.push(initialValue); }
    function getMinNumber () public returns (uint256) { return numbers[0]; }
    function getMaxNumber () public returns (uint256) { return numbers.length - 1; }
    function min () public returns (uint256) {
        uint256 min = getMinNumber();
        for (uint256 i = 1; i < numbers.length; ++i)
            if (numbers[i] < min)
                min = numbers[i];
        return min;
    }
    function max () public returns (uint256) {
        uint256 max = getMaxNumber();
        for (uint256 i = 1; i < numbers.length; ++i)
            if (numbers[i] > max)
                max = numbers[i];
        return max;
    }
    function sum () public returns (uint256) {
        uint256 sum = 0;
        for (uint256 i = 0; i < numbers.length; ++i)
            sum += numbers[i];
        return sum;
    }
    function get (uint256 index) public returns (uint256) { return numbers[index]; }
    function set (uint256 index, uint256 element) public { numbers[index] = element; }
    function check () public { require(storedValue == 0x123456789abcdef0, "Not 0x123456789abcdef0"); }
    function sort () public {
        uint256[] memory tmp = numbers;
        numbers = new uint256[](numbers.length);
        for (uint256 i = 0; i < tmp.length; ++i)
            numbers[i] = tmp[i];
    }
}
