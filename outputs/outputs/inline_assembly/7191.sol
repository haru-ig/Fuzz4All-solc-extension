pragma solidity ^0.8.0;
contract Ownable {
    address payable public owner_;
    bytes32 public constant DEFAULT_ADMIN_ROLE = keccak256("DEFAULT_ADMIN_ROLE");
    bytes32 public constant ADMIN_ROLE = keccak256("ADMIN_ROLE");
    event OwnershipTransferred(address indexed previousOwner, address indexed newOwner);
    constructor() {
        owner_ = msg.sender;
        _transferOwnership(msg.sender);
    }
    modifier onlyOwner() {
        _onlyOwned();
        _;
    }
    modifier onlyAdmin() {
        _onlyAdmin();
        _;
    }
    function _transferOwnership(address newOwner) internal {
        emit OwnershipTransferred(owner_, newOwner);
        owner_ = newOwner;
    }
    function owner() public view returns (address) {
        return owner_;
    }
    function renounceOwnership() public {
        emit OwnershipTransferred(owner_, address(0));
        _transferOwnership(address(0));
    }
    function addAdminRole() public onlyOwner {
        _addRoleAdmin(DEFAULT_ADMIN_ROLE);
    }
    function removeAdminRole() public onlyOwner {
        _removeRoleAdmin(DEFAULT_ADMIN_ROLE);
    }
    function addRole(bytes32 role) public onlyOwner {
        _addRole(role);
    }
    function removeRole(bytes32 role) public onlyOwner {
        _removeRole(role);
    }
    function _addRole(bytes32 role) internal {
        _addRoleAdmin(role);
    }
    function _removeRole(bytes32 role) internal {
        _removeRoleAdmin(role);
    }
    function _addRoleAdmin(bytes32 role) internal {
        address currentAdminRole = get roleAdmins(DEFAULT_ADMIN_ROLE);
        bytes32 roleAdminBytes32 = keccak256(abi.encodePacked(role));
        _grantRole(roleAdminBytes32, currentAdminRole);
    }
    function _removeRoleAdmin(bytes32 role) internal {
        address currentAdminRole = get roleAdmins(DEFAULT_ADMIN_ROLE);
        address roleAdminToRemove = roleAdmins(role);
        if (role
