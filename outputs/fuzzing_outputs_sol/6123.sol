pragma solidity ^0.8.0;
contract B {
    address public admin;
    mapping(address => bool) isAdmin;
    modifier onlyAdmin() {
        require(isAdmin[msg.sender] || msg.sender == admin, "Only admin can call");
        isAdmin[msg.sender] = true;
        _;
    }
    function setAdmin(address _addr) public {
        isAdmin[_addr] = true;
        admin = _addr;
    }
    function adminAddress() external view returns (address) {
        return admin;
    }
}
contract Test is B {
    function setAdmin(address _addr) public {
        isAdmin[msg.sender] = true;
        admin = _addr;
    }
    function adminAddress() external view returns (address) {
        return admin;
    }
}

pragma solidity ^0.8.0;
contract B {
    address public admin;
    constructor() public {
        admin = msg.sender;
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
        emit Log(block.number);
    }
}







<fim_middle>contract Test is B {
    function Log(uint number) internal {
        require(block.timestamp > block.number, "Time not too far in the future");
    }
}

pragma solidity ^0.8.0;
contract B {
    constructor() public {
        address(this).balance;
    }
}
contract Test is B {
    function Log() public {

        address(this).balance;
    }
}








/* Here is a contract which accepts
