pragma solidity ^0.8.0;
contract PaybackCaller {
    function fallback(uint value) public pure {
        msg.sender.transfer(value);
    }
}
contract Demonstration {
    function payback() public payable returns (uint) {
        return 17;
    }
}
