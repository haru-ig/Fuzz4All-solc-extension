pragma solidity ^0.8.0;
contract Caller8
{
        mapping (uint256 => uint256) arrayField;
        mapping (uint256 => uint256) boolField;
        mapping (uint256 => uint256) uint256Field;
        mapping (uint256 => uint256) bytes32Field;
        mapping (uint256 => bytes32) bytesField;
        mapping (uint256 => uint256) stringField;
        mapping (uint256 => bool) boolByteArrayField;
        mapping (uint256 => bool) boolStraByteField;

        constructor () {
                arrayField[0] = 0;
                uint256Field[1] = 0;
                boolField[2] = 0;
                boolField[3] = 0;
                boolField[4] = 0;
                stringField[5] = "This";
                uint256Field[6] = 7;
        }

	function c(uint256 l1) public {
		uint256 x = 6;
        arrayField[x] = 0x313233343536373839;
        boolByteArrayField[0x31] = 0;
        bytes32Field[3] = bytes32("3");
        uint256 uint128Max = type(uint128).max;
        uint256 uint128Min = type(uint128).min;

        uint256 field;
        assembly
        {
            mstore(0, field)
        }

        boolByteArrayField[0x120] = 0;
        boolStraByteField[0x83] = 0;

        boolField[7] = 0;
        string field2 = "String";

        uint256 field1 = field2.length;

	 }


        function d() public payable {
		bool bool1 = boolField[3];
        bytes32 bytes321 = bytes32Field[29];

        bytes field4 = bytes(bytes32(bytes321));

        bytes3 field5 = bytes(bytesField[29]);

        uint256 uint128Max = type(uint128).max;
        uint256 uint256Max = type(uint256).max;


     }
}
