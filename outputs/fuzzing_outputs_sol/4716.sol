pragma solidity ^0.8.0;
contract Caller is Modifiers {
    receive() external payable {
        require(msg.value!= address(0), 'invalid token');
    }
}
