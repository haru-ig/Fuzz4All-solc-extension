pragma solidity ^0.8.0;
contract MixedContractsExample {
    MixedContracts memory x = new MixedContracts();
    address payable owner;

    mapping(address => bytes32) public deployedAddressToFunction;

    function deployAllAddressesForMixedContracts(uint witness) public {
        address[] memory addresses = [address(0x1902b1a7e4308463ac5C992728557f6C9cb855d6),address(0xE7f03bE05C0865012b996b7E494BcD0290e8873E), address(0xAde896D20a9c8C9A8f5B87208D82B10B6D76Af4C),address(0x53D46848005b38aE8A0B91EC115600f6D8f63731),address(0x375968F5BDA75557509100280D969a05E68CB1A8),address(0xb65396C3cD6d3f3eC8F77C1C3847DBB0A4C9887C),address(0x83A4A0799DA031982dC32F8bD532E53eA0bDb221),address(0x26E0e3cEb0C78d0908f3Bdf5082b2F325886145a),address(0x337E48F66461C0978866f97A3877A02072639976),address(0x06320A2D45e5a3583E89C084A8e8883c50087ab9),address(0x
