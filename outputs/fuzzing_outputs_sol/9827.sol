pragma solidity ^0.8.0;
contract Test {
    function Test(address  callData) payable external {
        emit SendEther(msg.sender, msg.value);
    }


    event Emitted(address indexed from,uint256 index);
}
