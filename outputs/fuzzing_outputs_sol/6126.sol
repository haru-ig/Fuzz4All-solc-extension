pragma solidity ^0.8.0;
contract B {
    uint adminNum;
    address public admin;
    constructor() public {
        admin = msg.sender;
        adminNum = adminNum;
    }
    modifier onlyAdmin() {
        require(admin == msg.sender, "Only admin can call");
        _;
    }
    function setAdmin(address _addr) public {
        admin = _addr;
    }
    function adminAddress() external view returns (address) {
        return admin;
    }
    function setAdminNum(uint _num) public {
        adminNum = _num;
    }
    function adminNum() public view returns (uint) {
        return adminNum;
    }
}
contract Test is B {
        constructor() public {
            require(block.timestamp > block.number, "Time not too far in the future");
        }
}
