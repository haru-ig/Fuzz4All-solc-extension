pragma solidity ^0.8.0;
contract MultiAddressMutations {
    address public constant _ZERO_ADDRESS = 0x0;
    bool public constant _SUCCESS = true;
    uint _maxUint = uint(~uint(0) >> (256 - 1));
    address[] private newContracts;
    uint256 private i = 1;
    address[] public otherContracts;
    uint256 public _newContractI;


    function setNewAddress(uint256 i, address newContractAddress) external {
        newContracts[i] = newContractAddress;
    }


    function setDefaultAddress(address newAddress) public {
        require(_SUCCESS == false);
        require(newAddress!= _ZERO_ADDRESS);
        newAddress_default = newAddress;
    }


    function getDefaultAddress() public view returns (address) {
        return newAddress_default;
    }


    function getNewAddressByIndex(uint256 i) public view returns (address) {
        return newContracts[i];
    }


    function getCurrentLengthOfContracts() public view returns (uint256) {
        return newContracts.length;
    }


    function getInternal(uint256 i) public view returns (address) {
        return newContracts[i];
    }

    /**
     * @dev Check that a contract has been created in the array of all newly proposed contracts. The function just checks the index if the value is greater than zero
     * and if the result of calling the getInternal function returns _ZERO_ADDRESS if
