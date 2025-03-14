pragma solidity ^0.8.0;
contract MutatedAddresses {
    address[] public arrayOfAddresses = new address[](3);
    address public arrayOfAddresses_current;


    function getArrayOfAddresses() public view returns (address[] memory) {
        return arrayOfAddresses;
    }


    function getArrayOfAddresses_2() public view returns (address) {
        return arrayOfAddresses_current;
    }

    function getOneAddress() public view returns (address) {
        return arrayOfAddresses[0];
    }


    function getOneAddress_2() public view returns (address) {
        return arrayOfAddresses_current;
    }

}
