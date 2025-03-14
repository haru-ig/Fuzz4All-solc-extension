pragma solidity ^0.8.0;
contract Fallback {
    uint constant private val = 36;
    bool public isFallbackCalled;
    address private myContract;
    constructor (address _myContract) {
        myContract = _myContract;
    }
    function fallback() external {
        isFallbackCalled = true;
        myContract.transfer(msg.value);
    }
    function () external payable {}
}
contract Caller {
    uint public counter;
    event Transfer(uint indexed to, uint value);
    address public contractTo;
    function contractWithFallback() public payable {
        contractTo.transfer(msg.value);
    }
    uint constant private val = 36;
    function set(uint _x) public view {
        require(_x == val);
    }
    fallback() external payable {}
    receive() external payable {}
}
