pragma solidity ^0.8.0;
contract Test40c {
    address[] public addressArray;
    uint public counter;
    uint256 public value;
    constructor() public {
        addressArray = new address[](0);
        value = 0;
        counter = 0;
    }
    function modify_1() public {
        addressArray[counter+1] = address(0xffffffffffffffffffffffffff);
    }
    function modify_2() public {
        value = 1;
        addressArray[counter+2] = address(0xffffffffffffffffffffffffff);
    }
    function getValue_1() public view returns(address) {
        return value;
    }
    function getValue_2() public view returns(address) {
        address addr = addressArray[counter];
        return addr;
    }
}
