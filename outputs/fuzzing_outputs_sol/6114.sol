pragma solidity ^0.8.0;
contract B {
    address public admin;
    constructor() public {
        admin = msg.sender;
    }
    modifier onlyAdmin() {
        require(msg.sender == admin, "Only admin can call");
        _;
    }
    function setAdmin(address _addr) public {
        admin = _addr;
    }
    function adminAddress() external view returns (address) {
        return admin;
    }
}
contract Test is B {
    constructor() public {
        require(block.timestamp > block.number, "Time not too far in the future");
    }
}
