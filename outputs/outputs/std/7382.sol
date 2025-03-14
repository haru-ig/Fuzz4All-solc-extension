pragma solidity ^0.8.0;
contract Convert {

    function toUint16(uint256 _value) internal pure returns (uint16) {
        return uint16(_value);
    }


    function toUint32(uint256 _value) internal pure returns (uint32) {
        return uint32(_value);
    }


    function toUint256(uint256 _value) internal pure returns (uint256) {
        return _value;
    }


    function sizeOfBytesArray(uint16 start_slot, uint16 end_slot) public pure returns (uint256) {
        bytes storage myArray = bytes.allocate(end_slot - start_slot + 1);

        uint i;
        for (i = start_slot; i <= end_slot; i = i + 1) {
            myArray[i-start_slot] = bytes.load(myArray, 0);
        }

        uint32 size = 0;
        for (i = start_slot; i <= end_slot; i = i + 1) {
            size = (1000000 * myArray[i - start_slot]) + size;
        }

        bytes.free(myArray);
        return uint256(size);
    }
}
