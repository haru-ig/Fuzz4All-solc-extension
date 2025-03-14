pragma solidity ^0.8.0;
contract Array {
    function getMin(int256[ ] numbers) internal pure returns (int256 min) {
        min = numbers[0];
        for (int256 i = 1; i < numbers.length; ++i) {
            if (numbers[i] < min) min = numbers[i];
        }
        return min;
    }
    function getMax(int256[ ] numbers) internal pure returns (int256 max) {
        max = numbers[0];
        for (int256 i = 1; i < numbers.length; ++i) {
            if (numbers[i] > max) max = numbers[i];
        }
        return max;
    }
    function sum(int256[ ] numbers) internal pure returns (uint256 sum) {
        for (uint256 i = 0; i < numbers.length; ++i) {
            sum += numbers[i];
        }
        return sum;
    }
    function getArraySize() public pure returns (uint256 size) {
        return array.length;
    }
    modifier checkZero(int256 _value) {
        require(_value == 0);
        _;
    }
    function emptyToZero() public checkZero(getArraySize()) {
        getArraySize();
    }
    function checkNegative(int256 number) public checkZero(number>=0) {
    }
    function checkZeroOrNegative(int256 number) public checkZero(number<0) {
    }
    function checkPositive(int256 number) public checkZero(number>0) {
    }
    function checkZeroOrEqual(int256 number) public checkZero(number>=0) {
    }
    function checkZeroLessOrEqual(int256 number) public checkZero(number<=(array.length-1)) {
    }
    function checkZeroGreaterOrEqual(int256 number) public checkZeroGreaterOrEqual(0) {
    }
}
contract Convert {
    function toBytes(int256 _value) public pure returns (bytes memory) {
        return abi.encode(_value);
    }
    function toBool(bytes memory _bytes) public pure returns (bool) {
        return abi.decode(_bytes, (bool));
    }
    function fromBytes(bytes memory _bytes) public pure returns (int256)  {
        return abi.decode(_bytes, (int256));
    }
}
contract Math {
    modifier checkZero(uint256 _value) {
        require(_value == 0);
        _;
    }

    uint8 constant _EIGHT_BIT_MASK = 2**(8 * 2);
    function shiftRight(uint256 _value, uint256 _bits) public pure returns (uint256) {
        return uint256((_value << _bits) >> _bits);
    }
    function modPow
