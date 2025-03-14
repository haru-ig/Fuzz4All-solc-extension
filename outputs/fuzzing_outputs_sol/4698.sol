pragma solidity ^0.8.0;
contract Caller {
    uint storedValue;
    function setMyValue(uint x) public payable {
        storedValue = x;
    }
    function getMyValue() public view returns(uint) {
        return storedValue;
    }
    function testCall() public {
        uint a = address(this).balance;
        uint b = message.value;
        uint c = address(this).call.value(1)(abi.encodeWithSignature("setMyValue(uint256)"));
        c.transfer(5);
        uint d = bytes(this).length;
    }
}
