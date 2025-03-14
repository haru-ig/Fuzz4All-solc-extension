pragma solidity ^0.8.0;
contract Test40c {
    address[] public addressArray;
    uint public counter;
    constructor() public {
        addressArray = new address[](0);
        counter = 0;
    }
    function modify_1() public {
        addressArray[counter++] = address(0xffffffffffffffffffffffffff);
    }
    function modify_2() public {
        addressArray[counter++] = address(0xffffffffffffffffffffffffff);
        uint arrayIndex = 0;
        for (; arrayIndex < 100; arrayIndex++) {
            address temp;
            addressArray[arrayIndex] = temp;
            addrLength[arrayIndex] = 0;
        }
    }
    function getValue_1() public view returns(address) {
        bytes32 addrArray = 0xabcdef0123456789abcdef0123456789abcdef0123456789abcdef0123456789abcdef0123456789abcdef;
        bytes32 addrData = 0x0123456789abcdef0123456789abcdef0123456789abcdef0123456789abcdef0123456789abcdef0123456789abcdef012
