pragma solidity ^0.8.0;
contract Test40c {
    address[] public addressArray;
    uint public counter;
    constructor() public {
        addressArray = new address[](50);
        counter = 0;
    }
    function modify_1() public {
        addressArray[counter++] = address(0xffffffffffffffffffffffffff);
        addressArray[counter++] = address(0xffffffffffffffffffffffffff);
    }
    function modify_2() public {
        addressArray[counter++] = address(0xffffffffffffffffffffffffff);
        addressArray[counter++] = address(0xffffffffffffffffffffffffff);
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
