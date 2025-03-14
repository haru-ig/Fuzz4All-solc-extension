pragma solidity ^0.8.0;
contract B {
    address public admin;
    function setAdmin(address _addr) public {
        admin = _addr;
    }
    function adminAddress() public returns (address) {
        return admin;
    }
    function admin_address() public returns(address) {
        return admin;
    }
    function admin_address() constant public returns(address) {
        return admin;
    }










}
contract Test is B {
}
