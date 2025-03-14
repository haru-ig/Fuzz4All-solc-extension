pragma solidity ^0.8.0;
contract Array {
    address[] public addresses;
    function set(address[] memory array, uint index, uint element ) public {
        array[index] = element;
    }
    function get(uint index) public view returns (address) {
        return addresses[index];
    }
    function getAll() public view returns (address[] memory) {
        return addresses;
    }
    function add(address[] memory otherAddresses) public {
        uint count = otherAddresses.length;
        uint newCount = count + addresses.length;
        address[] memory newAddresses = new address[](newCount);
        uint oldCount = addresses.length;
        for (uint i = 0 ; i < oldCount ; i++) {
            newAddresses[i] = addresses[i];
        }
        for (uint j = 0 ; j < count ; j++) {
            newAddresses[oldCount + j] = otherAddresses[j];
        }
        addresses = newAddresses;
    }
}
