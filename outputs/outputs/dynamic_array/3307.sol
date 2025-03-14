pragma solidity ^0.8.0;
import "truffle/Assert.sol";

contract ArrayTests {

    uint256 const ARRAY_LENGTH = 3;

    bytes32[ARRAY_LENGTH] private arrayOfIntegers;

    bytes32[ARRAY_LENGTH] private arrayOfStrings;


    constructor() {
        for(uint256 i = 0; i < ARRAY_LENGTH; i++) {
            arrayOfIntegers[i] = i;
            arrayOfStrings[i] = bytes32(42 + i);




            arrayOfIntegers.push(i);
            arrayOfStrings.push(bytes32((i + 1).toString()));
        }
    }


    function use(uint256 key, bytes4 functionSelector) public view returns(uint256) {
        (uint256 index, uint256 value) = _get(key);

        uint256 result = 0;
        switch(key) {
            case 42:
            case 43:
            case 44:
            case 45:
            case 46:
            case 47:
            case 48:
            case 49:
            case 50:
            case 51:

                break;
        }

        assembly {
            if (key eq 0) {
                result := mload(key)
            } else {
                result := SLOAD(key)
            }
        }
    }


    function _get(uint256 key) public view returns(uint256, uint256) {
        (uint256 pos, uint256 end) = _bounds(key);
        return (key, arrayOfIntegers[pos]);
    }


    function _addr(uint256 key) public view returns(address) {
        (uint256 pos, uint256 end) = _bounds(key);
