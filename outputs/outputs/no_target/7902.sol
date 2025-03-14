pragma solidity ^0.8.0;
interface ProxyAdminBase {
    function isProxyAdmin() external view returns(bool);
    function isPendingAdminApproval() external view returns(bool);
    function addPermission(address addr) external returns(uint16);
    function approvePendingAdmin(address newAdmin) external returns(uint16);
    function removePermission(address addr) external returns(uint16);
    event AddedPermission(address indexed _addr, uint _permId);
    event RevokedPermission(address indexed _addr, uint _permId);
}

pragma solidity ^0.8.0;
contract ProxyAdmin is ProxyAdminBase {
    mapping(address => uint16) public addrsToPermissions;
    mapping(uint16 => address) public permsToAddresses;
    modifier adminOnly() {
        require(isProxyAdmin(), "ProxyAdmin: only admin is allowed");
        _;
    }
    function () external payable {
    }
    function isProxyAdmin() public view override returns(bool) {
        return true;
    }
    function isPendingAdminApproval() public view override returns(bool) {
        return false;
    }
    function addPermission(address addr) public override returns(uint16 permId) {
        require(!isPendingAdminApproval(), "ProxyAdmin: permission already been issued");
        addrsToPermissions[addr] = 1;
        if (permId > 25) {
            permId = 25;
        }
        permsToAddresses[permId] = addr;
        emit AddedPermission(addr, permId);
        return 1;
    }
    function removePermission(address addr) public override returns(uint16 permId) {
        require(addrsToPermissions[addr] > 0, "ProxyAdmin: permission does not exist");
        uint16 r = addrsToPermissions[addr];
        delete addrsToPermissions[addr];
        delete permsToAddresses[r];
        emit RevokedPermission(addr, r);
        return r;
    }
    function approvePendingAdmin(address newAdmin) public override returns(uint16 permId) {
        require(isPendingAdminApproval(), "ProxyAdmin: not yet approved");
        address permAddress = permsToAddresses[0];
        delete permsToAddresses[0];
        if (permAddress == address(0)) {
