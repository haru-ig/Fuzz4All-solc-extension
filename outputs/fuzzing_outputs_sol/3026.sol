pragma solidity ^0.8.0;
contract Gasless {
    uint constant gasCost = 1 ether;

    function gasless() public pure payable {
        uint gas = gasleft();
        uint256 amount = gasCost;
        require(msg.value >= amount);
        address payable recipient = msg.sender;
        recipient.transfer(amount);
        recipient.transfer(amount);
        recipient.transfer(amount);
    }
}
