pragma solidity ^0.8.0;
contract SemanticTest {
    uint public lastIndex = 100;
    address public lastAddress;
    function setLastIndex(uint _lastIndex) public {
        lastIndex = _lastIndex;
        lastAddress = msg.sender;
    }
    function getAddress() public view returns(address)  {
        return lastAddress;
    }
    function incrementLastIndex() public {
        lastIndex += 1;
    }
    function getMyAddress() public view returns(address)  {
        return msg.sender;
    }
}
