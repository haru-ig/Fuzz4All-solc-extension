pragma solidity ^0.8.0;
contract B {
    address public admin;
    constructor (address _admin) public {
        admin = _admin;
    }
    function adminAddress() public view returns (address) {
        return admin;
    }
}
contract Test is B {
    function setAdmin(address _addr) public {
        admin = _addr;
    }
    function adminAddress() public view returns (address) {
        return admin;
    }
}
