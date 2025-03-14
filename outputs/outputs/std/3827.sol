pragma solidity ^0.8.0;
contract ArrayHandling {
    uint[] public array;
    uint256 private maxLength;
    function populate() public {
        array[0] = 123;
        array[1] = 456;
        array[maxLength] = 987;
    }
    function changeLength() public {
        var oldLength = maxLength;
        maxLength =  maxLength + 1;
        uint256 newValue = (maxLength - oldLength) % 10000;
        for (uint i = 0; i < arraysLength; i++) {
            array[i + 1] = newValue;
        }
    }
    function setArray() public {
        array[maxLength] = uint256(1000000000000000000);
    }
    function getArray() public view returns (uint256[]) {
        return array;
    }
}
contract Multiprecision {
    uint128 private multiplicandValue;
    uint256 private constant multiplicandLength = 20;
    function multiplyByMultiplicand() public {
        uint256 newNumArray[multiplicandLength];
        for(uint i = 0; i < multiplicandLength; i++) {
            newNumArray[i] = uint128(2 * multiplicandValue);
        }
    }
    function getMultiplicandValue() public view returns (uint256) {
        return multiplicandValue;
    }
    function setMultiplicandValue(uint256 _newMultiplicandValue) public {
        multiplicandValue = _newMultiplicandValue;
    }
}
contract GetAddress {
    function getPointer() public view returns (address) {
        return address(this);
    }
}
