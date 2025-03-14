pragma solidity ^0.8.0;

contract Array {
uint256[] public values;

function push(uint256 n) public {
    values.push(n);
}

function pop() public {
    uint256 valueAtIndex = values.length - 1;
    uint256 poppedValue;
    assembly {
        poppedValue := mload(add(values, valueAtIndex))
    }
    values.pop();
    return poppedValue;
}

function getMinimum(uint256[] memory arr) public view returns (uint256 minimum) {
    minimum = arr[0];
    for (uint256 i = 1; i < arr.length; i++) {
        if (arr[i] < minimum) {
            minimum = arr[i];
        }
    }
}

function findMaximum(uint256[] memory arr) public view returns (uint256 maximum) {
    maximum = arr[0];
    for (uint256 i = 1; i < arr.length; i++) {
        if (arr[i] > maximum) {
            maximum = arr[i];
        }
    }
}

function getSum(uint256[] memory arr) public view returns (uint256 sum) {
    sum = 0;
    for (uint256 i = 0; i < arr.length; i++) {
        sum = sum + arr[i];
    }
}

function setArray(uint256[] storage arr, uint256[] memory newValues) public {
    if (arr.length == newValues.length) {
        bytes memory data = abi.encode(newValues);
        require(keccak256(data) < keccak256(abi.encodePacked(newValues.length))));
        arr.length = newValues.length;
        for (uint256 i = 0; i < newValues.length; i++) {
            arr.push(newValues[i]);
        }
    } else {
        throw;
    }
}

function getValueAtIndex(uint256[] memory arr, uint256 index) public view returns (uint256 value) {
    value = arr[index];
}

function max(uint256 x, uint256 y) public pure returns (uint256) {

    if (x < y) {
        return x;
    } else {
        return y;
    }
}

function max(uint256 x, uint256[] memory y) public pure returns (uint256) {
    if (x < y[0]) {
        return x;
    }
    for (uint256 i = 1; i < y.length; i++) {
        if (y[i] > y[0]) return y[i];
    }
}

function min(uint256 x, uint256 y) public pure returns (uint256) {

    if (x < y) {
        return y;
    }
