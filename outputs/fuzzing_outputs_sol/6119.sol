pragma solidity ^0.8.0;
contract B {
    constructor() public {}
    function setAdmin(address _addr) public {
        admin = _addr;
    }
}
contract Test is B {
    address private admin = 0x0000000000000000;
    constructor() public {
        setAdmin(0x0000000000000000);
        admin = address(0x0000000000000000);
    }
    modifier onlyOneAdmin() {
        require(admin == 0x0000000000000000, "Not only the first admin can call");
        _;
    }
    function adminAddress() public pure returns (address) {
        return admin;
    }
}
