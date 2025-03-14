pragma solidity ^0.8.0;
contract Mutater27 {
    address public owner;
    address public fallbackAddress;
    address[] public addresses;
    address[] public array;
    modifier onlyOwnerOrFallback(){
        require(msg.sender == owner||msg.sender == fallbackAddress, "!owner");
        _;
    }
    function Mutater27() {
    }
    function Mutater27(address _owner, address _fallbackAddress) {
        owner = _owner;
        fallbackAddress = _fallbackAddress;
    }
    function getAddresses(address _address) public view returns (address[] memory) {
        return addresses[_address];
    }
    function addAddress() public onlyOwnerOrFallback() returns (address[] memory) {
        array.push(msg.sender);
        return addresses[_address] == array[2]?new address[](3):new address[](2);
    }
    function addAddresses() public onlyOwnerOrFallback() returns(address[] memory) {
        array = msg.Sender;
        return _address == array[2]?new address[](3):new address[](2);
    }
}
