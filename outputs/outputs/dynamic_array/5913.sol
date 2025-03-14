pragma solidity ^0.8.0;
contract Test33789NoType {
    uint8 a = 0xFD;
    uint8[] memory x = new uint8[](0);
    function setFirstValue() public {
        x[0] = a;
    }
    function getFirstValue() public view returns (uint8) {
        uint8 first_value;
        first_value = x[0];
        return first_value;
    }
}

contract Test33789NoTypeNoType {
    uint8 a1 = 0xFD;
    uint8 a2 = 0xEE;
    uint8[] memory x = new uint8[](0);
    function setFirstValue() public {
        x[0] = a1;
        x[1] = a2;
    }
    function getFirstValue() public view returns (uint8) {
        uint8 first_value;
        uint8 second_value;
        uint8 first_value_address;
        uint8 second_value_address;
        uint8[2] memory first;
        uint8[2] storage second;
        first_value = x[0];
        second_value = x[1];
        first_value_address = uint8(uint256(uint16(first_value)));
        second_value_address = uint8(uint256(uint16(second_value)));
        first = uint16[](2);
        first = uint16[](2);
        uint8 first_value_2 = x[0];
        uint8 second_value_2 = x[1];
        first = uint16[](2);
        first = uint16[](2);
        first_value_2 = x[0];
        second_value_2 = x[1];
        first = uint16[](2);
        first = uint16[](2);
        first_value_2 = x[0];
        second_value_2 = x[1];
        first = uint16[](2);
        first = uint16[](2);
        first_value_2 = x[0];
        second_value_2 =
