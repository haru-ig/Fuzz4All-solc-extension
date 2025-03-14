pragma solidity ^0.8.0;
library {
    library DynamicArrayHelper {
        uint256 internal constant CALL_DATA_LENGTH = uint256(uint256(0xfe) << 15);
        uint256 internal constant MAX_ELEMENTS = 16 * CALL_DATA_LENGTH;
        uint256 internal constant NESTED_ARRAY_LENGTH = 16 * uint256(uint256(0xff));


        function nestedArraySize(uint256[] calldata data)
            internal
            pure
            returns (uint256)
        {
            uint256 i = maxOfTwo(data.length);
            uint256 n = 0;
            while (i > 0) {
                if (data[i - 1] & 0x8000000000000000000000000000000)!= 0)
                {
                    i -= 2;
                    n++;
                }
                else {
                    i--;
                }
            }
            n--;
            return n;
        }


        function maxOfTwo(uint256 left, uint256 right) internal pure returns(uint256) { return left >= right? right : left; }

        /**
        * @dev Get the maximum uint8 of two uint256
