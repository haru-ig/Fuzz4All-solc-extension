pragma solidity ^0.8.0;
contract TestStorage {
    function setstorage(uint _x, address _address) public {
        storageAddress[_x] = address(_address);
    }
    function getContractAddress() public view returns (address) {
        return contractAddress;
    }
    address public contractAddress;
}
