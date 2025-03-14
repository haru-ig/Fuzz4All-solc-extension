pragma solidity ^0.8.0;
contract ArrayAssignment {
    uint8[6] array8;

    function ArrayAssignment() public {
        array8[0] = 0;
        array8[1] = 255;
        array8[2] = 0xff;
        array8[3] = 0xfe;
        array8[4] = 0xff;
        array8[5] = 0xfe;
    }

    function callArrayAssignment() public payable {
        assembly {
            array8 := mload(add(array, 32))
        }
        array8[0] = 0;
        array8[1] = 255;
        array8[2] = 0xfe;
        array8[3] = 0xff;
        array8[4] = 0xfe;
        array8[5] = 0xff;
    }
}
