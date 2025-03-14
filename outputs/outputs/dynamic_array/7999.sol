pragma solidity ^0.8.0;
contract Test40d {
    address[] public addressArray;
    uint public counter;
    constructor() public {
        addressArray = new address[](50);
        address ArrayAddress = address(addressArray);
        address addr1 = address(0xffffffffffffffffffffffffff);
        ArrayAddress = addr1;
        address addr2 = address(0xffffffffffffffffffffffffff);
        ArrayAddress = addr2;
    }
    function getValue_1() public view returns(address) {
        address addr = addressArray[0];
        return addr;
    }
    function getValue_2() public view returns(address) {
        address addr = addressArray[1];
        return addr;
    }
}
