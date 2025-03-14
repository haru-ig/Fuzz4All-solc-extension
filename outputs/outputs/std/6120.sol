pragma solidity ^0.8.0;
import "./Convert.sol";
contract Array {
    address[] arrayAddresses;
    uint32 maxAddressCount;
    uint32 minAddressCount = 10;


    constructor (uint32 arrayCount) {
        assert(maxAddressCount < minAddressCount,
            "Array.sol: contract arrays must not exceed the bounds of the contract");
        for (uint32 index = 0; index < arrayCount; index++) {
            maxAddressCount++;
            arrayAddresses.push(msg.sender);
        }
    }

    function setAddress(uint32 index, address addressAt) {
        assert(index <= maxAddressCount,
            "Array.sol: Index out of bounds");
        maxAddressCount++;
        arrayAddresses[index] = addressAt;
    }

    function getAddress(uint32 index) public view returns (address) {
        assert(index <= maxAddressCount,
            "Array.sol: Index out of bounds");
        return arrayAddresses[index];
    }

    function getAddresses() public view returns (address[] memory) {
        int length = maxAddressCount;
        address[] memory result = new address[](length);
        for (uint32 i = 0; i < length; i++) {
            result[i] = arrayAddresses[i];
        }
        return result;
    }

    function getMinimumAddressCount() public view returns (uint32) {
        return minAddressCount;
    }
}
