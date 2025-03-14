pragma solidity ^0.8.0;
interface IContractOwner {
    struct Ownership{
        address[2] accounts;
        uint256 nonce;
    }
    function removeOwnership(address _address) external returns (uint);
    function setNonce(uint[] calldata _addresses) external returns (uint);
    function addAddressToRolesAllowed(address[] calldata _addr) external returns (uint);
    function removeAddressFromRolesAllowed(address[] calldata _addr) external returns (uint);
    function addAddressToRolesNotAllowed(address[] calldata _addr) external returns (uint);
    function removeAddressFromRolesNotAllowed(address[] calldata _addr) external returns (uint);
    function hasAddressAccountsRolesAllowed(address[] calldata _addr) external view returns (uint);
    function hasAddressAccountsRolesNotAllowed(address[] calldata _addr) external view returns (uint);
    function addressInRole(bytes32 _role, address _address) external view returns (uint);
    function hasAddressAddresses(address[] calldata _addr) external view returns (uint);
    function addAddressToAccount(uint[] calldata _addr) external returns (uint);
    function removeAddressFromAccount(uint[] calldata _addr) external returns (uint);
    function hasAddr() external view returns (uint);
    function hasAddress() external view returns (uint);
    event OwnershipChanged(
        address indexed owner
    );
}
