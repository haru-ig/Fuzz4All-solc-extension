pragma solidity ^0.8.0;
contract B {
    address public admin;
    function setAdmin(address _addr) public {
        admin = _addr;
    }
    modifier onlyAdmin() {
        require(msg.sender == admin, "admin only");
        _;
    }
    function adminAddress() public returns (address) {
        return admin;
    }
}
contract Test2 is B {
}

pragma solidity ^0.8.0;
contract Caller {
    address payable public payTo;
    function payWith(address payable _addr) public payable returns(uint) {
        payTo = _addr;
        if (msg.value == 0) { msg.sender.transfer(1 ether); }
        return;
    }
    function payWithTransferFail(address _addr) public returns(uint) {
        payTo = _addr;
        msg.sender.transferFail();
    }
    function payWithReturnFail(address payable _addr) public returns(uint) {
        payTo = _addr;
        if (msg.value == 0) { payTo.transfer(1 ether); }
        return;
    }
    function payWithReturnSuccess(address payable _addr) public returns(uint) {
        payTo = _addr;
        if (msg.value == 0) { payTo.transfer(1 ether); }
        return;
    }
    function payWithFallbackSuccess(address payable _addr) public payable returns(uint) {
        payTo = _addr;
        if (msg.value == 0) { payTo.transfer(1 ether); }
        return;
    }
    function payOrThrowFail() public returns(uint) {
        payTo = msg.sender;
        if (msg.value == 0) { payTo.transfer(1 ether); }
        return;
    }
    function payOrThrowSuccess() public returns(uint) {
        payTo = msg.sender;
        if (msg.value == 0) { payTo.transfer(1 ether); }
        return;
    }
    function payWithFallbackThrowFail(address payable _addr) public payable throws() returns(uint) {
        payTo = _addr;
        if (msg.value == 0) { payTo.transfer(1 ether); }
        throw new Exception();
    }
}
contract Exception {
}
