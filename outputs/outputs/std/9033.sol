pragma solidity ^0.8.0;
contract MutatedClass {
    modifier myModifier() {
        throw 5;
    }
    array newArr;
    function makeChange(uint amount) public {
        newArr.push(uint2uint8(amount));
    }
    function getAt(uint index) public view returns(uint,uint) {
        return (uint2uint8(newArr[index]), (uint2uint8(newArr[index]) * 2));
    }
}
