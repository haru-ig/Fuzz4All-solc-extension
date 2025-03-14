pragma solidity ^0.8.0;
contract Caller {
    address payable c = msg.sender;
    fallback () internal pure {
        c.transfer(address(this).balance)
    }
}
