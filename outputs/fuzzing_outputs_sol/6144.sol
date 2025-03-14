pragma solidity ^0.8.0;
contract C {
    address admin;
    uint256 amount;
    constructor() public {
        admin = msg.sender;
    }
    function setAdmin(address _addr) public {
        admin = _addr;
    }
    function setAmount(uint256 _amount) public {
        amount = _amount;
    }
    function adminAddress() public view returns (address) {
        return admin;
    }
    function adminAddress1() public view returns (address) {
        return admin;
    }
    function withGasPrice() public payable {
        amount = 0;
        admin.transfer(msg.value);
        require(amount == 0, "Must be zero");
    }
    function payableWithGasPrice() external payable {
        amount = msg.value;
        revert("This should fail");
    }
}
contract Test is C {
    constructor() public {
        require(amount == 0, "Nothing should have happened before this contract");
    }
}
