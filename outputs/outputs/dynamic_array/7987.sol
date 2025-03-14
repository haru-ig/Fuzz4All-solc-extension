pragma solidity ^0.8.0;
contract Test40 {
    address[] public addressArray;
    uint public counter;
    constructor() public {
        addressArray[0] = 0xffffffffffffffffffffffffff;
        counter = 0;
    }
    function modify() public {
        addressArray[1] = address(0x00000000000000000000000000000000000000000000000000000000000000000);
    }
    function getValue() public view returns(address) {
        address addr = addressArray[0];
        return addr;
    }
}
