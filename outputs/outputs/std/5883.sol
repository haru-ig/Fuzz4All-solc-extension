pragma solidity ^0.8.0;

pragma experimental ABIEncoderV2;
import "Array.sol";
import "Math.sol";
import "Multiprecision.sol";
contract ArrayExamples {
    function arrayPush() public {
        Array.push(uint8[4]{0, 1, 2, 3});
        Array.push(uint8[4]{4, 5, 6, 7});
        Array.push(uint8[4]{8, 9, 10, 11});
        Array.push(true);
        Array.push(bytes32(keccak256("hello")));
        Array.push(bool(false));
    }
    function arrayPop() public {
        Array.popAndMove(uint8[4]{4, 5, 6, 7}, 3, 7);
        Array.popAndMoveBool(bool(false), 0, 3);
        Array.popAndDrop(uint8[4]{0, 1, 2, 3}, 7);
    }
    function arrayIndex() public {
        Array.set(uint8[4]{0, 1, 2, 3}, 2, 4);
        Array.drop(uint8[4]{0, 1, 2, 3}, 3);
        Array.swap(uint8[4]{0, 1, 2, 3}, 0, 1);
        Array.swap(uint8[4]{0, 1, 2, 3}, 1, 2);
        Array.swap(uint8[4]{0, 1, 2, 3}, 1, 0);
        Array.swap(uint8[4]{0, 1, 2, 3}, 0, 2);
    }
    function arrayAccess() public {
        Array.sliceAndSwap(uint8[4]{0, 1, 2, 3}, 1, 0);
        Array.sliceAndSwap(uint8[4]{0, 1, 2, 3}, 3, 1);
        Array.sliceAndSwap(uint8[4]{0, 1, 2, 3}, 1, 1);
    }
    function arraySort() public {
        Array.sort(uint8[4]{0, 1, 2, 3});
    }
    function arraySortInPlace() public {
        Array.sortInPlaceUint8ToUint32(uint8[4]{0, 1, 2, 3});
        Array.sortInPlaceByteToUint16(uint8[16]{1, 2, -4, -35});
        Array.sortInPlaceUint8ToUint8(uint8[4]{0, 1, 2, 3});
        Array.sortInPlaceUint8ToUint16(uint8[4]{3, 2, 1
