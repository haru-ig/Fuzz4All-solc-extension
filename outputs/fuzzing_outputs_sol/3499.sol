pragma solidity ^0.8.0;
library AccessControl {
    struct RoleData {
        mapping (address => bool) bearer;
        address admin;
    }

    struct Roles {
        mapping (bytes32 => RoleData) bearer;
        mapping (address => bool) admin;
    }

    event RoleAdminChanged(address indexed previousAdmin, address indexed newAdmin);

    Roles private _roles;

    constructor () {
    }


    modifier onlyWhenNotAdminOrBearer(address _account, bytes32 _role) {
        require(roles(_account, _role).nonZero, "Cannot be called by this account");
        _;
    }

    function isAdmin(address _account) public view returns(bool) {
        bytes32 role = keccak256(abi.encodePacked("Role-", _account));
        return _roles.bearer[role].admin;
    }

    function isAdminOf(address _account, bytes32 _role) public view returns(bool) {
        return roles(_account, _role).admin;
    }







    modifier onlyWhenNotRestrictedStorage(address _account, bytes32 _storage) {
        if (! _roles.bearer[_storage].admin) {
            abort();
        }
        _;
    }

    function _getRoleAdmin(address _account, bytes32 _role) internal view returns(address) {
        return _roles.bearer[_role].admin;
    }

    function _grantRole(address _account, bytes32 _role, address _admin) internal {
        _roles.bearer[_role].bearer[_account] = true;
        _roles.bearer[_role].admin = _admin;
        emit RoleAdminChanged(address(_roles.bearer[_role].previousAdmin), _admin);
    }

    function _revokeRole(address _account
