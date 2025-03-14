pragma solidity ^0.8.0;

import "../../common/Conversion.sol";
import "../../common/Array.sol";
import "../../common/Multiprecision.sol";
import "../../../lib/Math.sol";

contract ArrayMutator {

    struct Array {
        address[] values;
        uint256 capacity;
        uint256 len;
    }

    Array constant emptyArray = Array(new address[](0), 0, 0);

    uint256 constant maxArrayLength = 32;


    IERC20 public iERC20;

    Array array;

    function initialize(address iERC20Address) {
        iERC20 = IERC20(iERC20Address);
    }

    function getEmptyArray() returns (Array memory) {
        return emptyArray;
    }

    function getMaxLength() returns (uint256) {
        return maxArrayLength;
    }

    function getEmptyArrayAddress() returns (address) {
        return address(0);
    }

    function getArrayCap() returns (uint256) {
        return array.capacity;
    }

    function getArrayLen() returns (uint256) {
        return array.len;
    }

    function makeFull(Array memory a) internal returns (Array) {
        uint256 newLen = a.len;
        return Array(
            new address[](newLen + 1),
            a.capacity,
            newLen
        );
    }

    function makeEmpty() isNonConstant internal returns (Array memory) {
        for (uint256 i = 0; i < maxArrayLength; i++) {
            array.values[i] = 0;
        }
        return Array(new address[](0), maxArrayLength, maxArrayLength + 1);
    }

    function updateLenCapFromFull(Array memory a) internal returns (Array) {
        return Array(
            new address[](a.len + 1),
            a.capacity,
            a.len
        );
    }


    function add(Array memory arr, IERC20 iERC20Address) public {



        if (array.len == array.capacity) {
            array = makeFull(array);
        }


        if (array.len == array.capacity) {
            return;
        }



        address[] memory copyArr = new address[](array.len + 1);
        array.values.copyToArray(copyArr, 0, array.len);
        array.values = copyArr;
        array.
