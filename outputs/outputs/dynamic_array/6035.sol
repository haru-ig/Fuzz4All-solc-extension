pragma solidity ^0.8.0;

import '@openzeppelin/contracts-upgradeable/proxy/utils-proxy/Initializable.sol';

contract ProxyTestUpgradeable is Initializable, ContextUpgradeable {








    function initialize() public initializer {}


    function setRoleAdmin(bytes32 role) public onlyOwner() {
        emit RoleAdminChanged(msg.sender, role);

    }
}



pragma solidity ^0.8.0;pragma solidity ^0.8.0;

import "./ProxyTest.sol";

contract ProxyTestUpgradeableTest is ProxyTestUpgradeable {
    function setPaused(bool _paused) public onlyRole(DEFAULT_ADMIN_ROLE) {
        paused = _paused;
    }

    function setRoleAdmin(bytes32 _role, bytes32 _admin) public onlyRole(_role) {
        emit RoleAdminChanged(msg.sender, _role);

        setRoleAdmin(DEFAULT_ADMIN_ROLE, _admin);
    }
}
