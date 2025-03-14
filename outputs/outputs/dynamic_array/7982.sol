pragma solidity ^0.8.0;
contract Test40 {












    address[] public addressArray;
    uint public counter;
    constructor() public {
        addressArray = new address[](0);
        counter = 0;
    }
    function modify() public {
        addressArray[counter++] = address(0xffffffffffffffffffffffffff);
    }
    function getValue() public view returns(address) {
        address addr = addressArray[0];
        return addr;
    }
}
