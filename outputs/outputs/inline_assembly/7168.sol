pragma solidity ^0.8.0;
contract GenesisUpgrade {
    address public genesis;
    mapping(address => bool) public isAdmin;
    struct Role {
        bytes32 name;
        bytes32 adminRole;
        bytes32 defaultRole;
    }




    mapping (address => Role) public roles;

    constructor() {
        genesis = msg.sender;
        isAdmin[genesis] = true;
        __Roles(ROLE_ADMIN, _ROLE('AdminRole'), "");
    }

    modifier onlyAdmin() {
        require(isAdmin[msg.sender], "onlyadmin");
        _;
    }

    role AdminRole() {
    }

    function setRoleAdmin(address account, bytes32 role) public {
        roles[account][role] = Role(
            role,
            roles[account][role].adminRole,
            _ROLE(role)
        );
        isAdmin[account] = true;
    }

    function isRoleAdmin(address account, bytes32 role) public view returns (bool) {
        return roles[account][role].adminRole == _ROLE(role);
    }

    function grantRole(address account, bytes32 role) public {
        roles[account][role] = Role(
            role,
            roles[account][role].adminRole,
            _ROLE(role)
        );
    }
    fallback() external payable {}
}
