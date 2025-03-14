pragma solidity ^0.8.0;
interface IERC1115 {
    function setApprovalForAll(address, bool) external;
    function increaseApproval(address, uint256) external;
    function decreaseApproval(address, uint256) external;
    function setApprovalForAllWithSpender(address, address) external;
    function getRoleAdmin(bytes32) external view returns (address[]);
    function getRoleMember(bytes32, address) external view returns (bool);
    function grantRole(bytes32, address) external;
    function revokeRole(bytes32, address) external;
    function renounceRole(bytes32, address) external;
}
