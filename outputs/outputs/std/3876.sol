pragma solidity ^0.8.0;
interface IContractOwner {
    function setAddress(uint _gasPrice, bytes32 _hexString, address _address) external returns (uint);
    function setAddressAllowed(uint _gasPrice, bytes32 _hexString, address _address) external returns (uint);
    function setAddressNotAllowed(uint _gasPrice, bytes32 _hexString, address _address) external returns (uint);
    function hasAddress(uint _gasPrice, bytes32 _hexString) external view returns (bool);
    function hasAddressAllowed(uint _gasPrice, bytes32 _hexString) external view returns (bool);
    function hasAddressNotAllowed(uint _gasPrice, bytes32 _hexString) external view returns (bool);
    event AddressChanged(
        bytes32 indexed roleHash,
        address indexed newAddress,
        address indexed oldAddress
    );
    event AddressesChanged(
        bytes32 indexed roleHash,
        address[] indexed newAddresses,
        address[] indexed oldAddresses
    );
}
