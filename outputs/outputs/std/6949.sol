pragma solidity ^0.8.0;
contract Converter {
    constructor(uint256 intValue) {}
    function toNumber(uint256 uintValue) public pure view returns (uint256);
}



contract AddressVerifier {
    address addrBook;
    address addrBookConverter;



    function getConverterAddress() public view returns(address, bytes32) {
        return (addrBookConverter, authorHash);
    }
}



/*
