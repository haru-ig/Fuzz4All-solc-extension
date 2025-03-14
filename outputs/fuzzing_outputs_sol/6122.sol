pragma solidity ^0.8.0;
contract B {
    address admin;
    constructor() public {
        admin = msg.sender;
    }
    modifier onlyAdmin() {
        require(msg.sender == admin, "Only admin can call");
        _;
    }
    function setAdmin(address _addr) public onlyAdmin {
        admin = _addr;
    }
    function adminAddress() external view returns (address){
        return admin;
    }
}
contract A {
    function setB(test.B) public {}
}
contract Test is A {
    constructor() public {
        A(bytes32(keccak256(abi.encode("setB", 0xB))));
    }
}
