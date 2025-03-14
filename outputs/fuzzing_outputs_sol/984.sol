pragma solidity ^0.8.0;
contract ReceiveWithFallback {
    address someAddress;
    address public someAddressNonFallback;
    string public string;

    receive() external payable {
        string memory result = msg.data;
        (string memory actualString, uint32 actualUint32) = structFromString(result, 'String: ', 5);
        (string memory expectedString, uint32 expectedUint) = checkString(actualString);
        assert(expectedString == actualString);
        assert(expectedUint == actualUint32);
    }

    function structFromString(string memory input, string memory prefix, uint32 prefixLength)
        returns (string memory, uint32 memory)
    {
        (string memory result, uint32 prefixEnd, uint32 uint32End) =
            structFromStringInternal(input.substring(prefixLength), 0x0, false);
        return (result, prefixEnd + prefixLength + expectedUint(input, expectedUintType(uint32)) +
                   expectedUInt(string(uint32End + prefixLength), 0xffff));
    }

    function structFromStringInternal(string memory input, uint32 charEnd, bool fail)
        internal
        pure
        returns (string memory, uint32, uint32)
    {
        uint32 uint32End = string_start(input, charEnd);
        assert((uint32End + 7) == uint32(input.length));
        if (!fail && uint32End < 7) {
            uint256 uint256End = uint32(uint32End);
            while (input[uint256End]!= '0' && uint256End > 0) {
                uint256End--;
            }
            if (uint256End == 0) {
                uint256End += 8;
                while (input[uint256End - 1]!= '0' && uint256End > 0) {
                    uint256End--;
                }
            }
        }
        return (input.substring(0, uint32End), charEnd, uint32End);
    }

    function checkString(string memory input) pure internal returns (string memory, uint32) {
        (string memory first0, uint32 firstNull) = structFromString(input, "", 0);
        (, uint32 secondNull) = structFromString(input, "", 0);
        return (first0, secondNull);
    }

    function expectedUint(string memory input, uint32 expectedValue) internal pure returns (uint32) {
        (, uint32 secondNull) = structFromString(input, "", 0);
        return secondNull;
    }

    function expectedUintType(uint32 expectedValue) internal pure returns (uint32) {

        return expectedValue;
    }
}
