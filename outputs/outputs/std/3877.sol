pragma solidity ^0.8.0;
interface IContractOwner {
    struct Ownership{
        address[3] accounts;
        uint256 nonce;
    }
    function addOwnership(uint _gasPrice, address _address) external returns (uint);
    function removeOwnership(uint _gasPrice, address _address) external returns (uint);
    function setNonce(uint _gasPrice, bytes32 _bytes32, address[] calldata _addresses) external returns (uint);
    function addAddressToRolesAllowed(uint _gasPrice, bytes32 _hexString, address _address) external returns (uint);
    function removeAddressFromRolesAllowed(uint _gasPrice, bytes32 _hexString, address _address) external returns (uint);
    function addAddressToRolesNotAllowed(uint _gasPrice, bytes32 _hexString, address _address) external returns (uint);
    function removeAddressFromRolesNotAllowed(uint _gasPrice, bytes32 _hexString, address _address) external returns (uint);
    function hasAddressAccountsRolesAllowed(uint _gasPrice, bytes32 _hexString) external view returns (bool);
    function hasAddressAccountsRolesNotAllowed(uint _gasPrice, bytes32 _hexString) external view returns (bool);
    function addressInRole(bytes32 _role, address _address) external view returns (bool);
    function hasAddressAddresses(uint _gasPrice, bytes32 _hexString, address
