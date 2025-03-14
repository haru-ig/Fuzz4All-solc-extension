pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract T0F9B_calldata_array {
    uint public val;
    bytes[] public empty;
    bytes4[2] public call1;
    bytes4 call1Empty;
    bytes[] call2WithEmpty;
    bytes2 call2WithByte1Byte2;
    bytes4 call2WithByte1Byte2Empty;
}
pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract T0F99_nested_non_byte_arrays {
    uint public val;

    constructor (bytes4[2] memory _in1, uint _v) {
        val = 42;
        call1 = _in1;
    }

    function setEmpty (bytes[] memory _in1, uint _v) public {
        empty = _in1;
        val = 3;
    }

    function setCall1 (bytes4[2] memory _in1, uint _v) public {
        call1Empty = _in1;
        val = 3;
    }

    function setCall2Empty (bytes[] memory _in1, uint _v) public {
        call2WithEmpty = _in1;
        val = 3;
    }

    function setCall2Byte1Byte2Empty (bytes2 memory _in1, bytes2 memory _in2, uint _v) public {
        call2WithByte1Byte2 = _in1;
        call2WithByte1Byte2Empty = _in2;
        val = 3;
    }
}
