pragma solidity ^0.8.0;
contract Array {



    address public arrayAddresses [ 2 ];
    uint public initialArrayAddressesLength = 0;
    constructor () {
        arrayAddresses [ 0 ] = address (this);
        initialArrayAddressesLength++;
        arrayAddresses [ 1 ] = address (new HelloWorld ());
        initialArrayAddressesLength++;
    }

    modifier restricted() { if (initialArrayAddressesLength >= arrayAddresses.length) { revert ("Arrays cannot have more elements than their addresses."); } _; }

    address public arrayAddresses [ 20 ];
    address greeterAddress(uint i) public view returns (address) {
        return arrayAddresses[i];
    }
    function getGreetings() public view returns (string memory) {
        return greetings;
    }
    function setGreetings(string memory newGreetings) public restricted {
        greetings = newGreetings;
    }
}
