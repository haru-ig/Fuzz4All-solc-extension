pragma solidity ^0.8.0;
contract C {
    address public admin;
    constructor() public {
        admin = msg.sender;
    }
    function setAdmin(address _addr) public {
        admin = _addr;
    }
    function adminAddress() public view returns (address) {
        return admin;
    }
}
contract Test is C {
    function fallback() external payable {}
}
