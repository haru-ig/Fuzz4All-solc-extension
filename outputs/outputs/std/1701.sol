pragma solidity ^0.8.0;
contract Modification {



    Array.sol.Array<uint> myArray;
    bytes32 internal constant ZERO_HASH = "0x00000000000000000000000000000000000000000000000000000000000000";
    function modulusOperation() public returns (uint) {

        myArray[0] = ARRAY_SIZE - 1;

        uint result = myArray.getArrayIndexWithHash(ZERO_HASH);

        return result;

    }
}
