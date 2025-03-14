pragma solidity ^0.8.0;
contract MyAccount {
    address payable private owner;
    address payable payable contractOwner;
    constructor () {
        owner = msg.sender;
    }

    function deposit () public payable {
        contractOwner.send(msg.value);
    }
}

contract Array {
    uint[] private arrayOfValues;
    mapping (uint => uint) private arrayIndex;
    uint private arrayLength;

    function add (uint toAdd) public returns (bool success) {
        arrayLength++;
        arrayIndex[arrayLength] = toAdd;
        arrayOfValues.push(toAdd);
        accountCreated();
    }

    function getNumber (uint index) public returns (uint) {
        return arrayIndex[index];
    }

    function getAndAdd (uint toAdd, uint index) public returns (bool success) {
        arrayIndex[index] += toAdd;
        accountCreated();
        return true;
    }

    function getAndSubtract (uint toSubtract, uint index) public returns (bool success) {
        arrayIndex[index] -= toSubtract;
        accountCreated();
        return true;
    }

    function getAndMultiply (uint toMultiply, uint index) public returns (bool success) {
        arrayIndex[index] *= toMultiply;
        accountCreated();
        return true;
    }

    function getAndDivide (uint toDivide, uint index) public returns (bool success) {
        arrayIndex[index] /= toDivide;
        accountCreated();
        return true;
    }

    function contains (uint index) public returns (bool contains) {
        contains = index < arrayLength;
    }

    function max () public returns (uint max) {
        for (uint i = 0; i < arrayLength; i++) {
            if (arrayIndex[i] > max) {
                max = arrayIndex[i];
            }
        }
    }

    function min () public returns (uint min) {
        for (uint i = 0; i < arrayLength; i++) {
            if (arrayIndex[i] < min) {
                min = arrayIndex[i];
            }
        }
    }

    function sum () public returns (uint sum) {
        for (uint i = 0; i < arrayLength; i++) {
            sum += arrayIndex[i];
        }
    }

    function accountCreated () public {


    }
}
