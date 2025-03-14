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
    B public admin;
    constructor() public {
        admin = new B();
        ITest test = ITest(address(admin));
    }
}
contract Test2 is Test {
    constructor() public {
        Admin(address(admin)).setAdmin(msg.sender);
        ITest test2 = Admin(address(admin)).getTest();
    }
}
