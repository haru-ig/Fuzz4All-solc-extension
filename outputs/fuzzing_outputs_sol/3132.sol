pragma solidity ^0.8.0;
contract Contract18{
    event Fulfilled(address owner, uint256 indexed value);
    address[] public addresses;
    uint256[] public values;
    address public owner;
    constructor() {
        owner = msg.sender;
        addOne();
    }
    receive() external payable {
        uint256 index = addresses.length;
        addresses.push(msg.sender);
        values.push(msg.value);
        emit Fulfilled(msg.sender, index);
    }
    function getArray() public view returns (address[] memory, uint256[] memory) {
        address[] memory out = new address[](addresses.length);
        uint256[] memory out2 = new uint256[](addresses.length);
        for (uint256 i = 0; i < addresses.length; i++) {
            out[i] = addresses[i];
            out2[i] = values[i];
        }
        return (out, out2);
    }
    function getNumbers() public view returns(uint256[]) {
        return values;
    }
}
