pragma solidity ^0.8.0;
contract Test41 {
    address[] public addressArray;
    mapping(address => uint) public counter;
    constructor() public {
        addressArray = new address[](0);
        counter[address(0)] = 0;
    }
    function modify() public {
        addressArray.push(address(0xffffffffffffffffffffffffff));
    }
    function getValue() public view returns(address) { address addr = addressArray[counter][0]; return addr; }
}
