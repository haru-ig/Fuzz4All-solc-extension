pragma solidity ^0.8.0;
contract C is B {
    function changeAdmin(address _addr) public onlyAdmin {
        admin = _addr;
    }
    function testMsgSender() external {
        require(msg.value > 0, "No money to bet");
    }
}
