pragma solidity ^0.8.0;
contract Mutator Mod {
    uint data;

    constructor() {
        data = 100000;
        }
        function mutate() external {
            require(msg.value < address(this).balance || msg.value > data);
            require(msg.value > 0);
            address payable recipient = payable(msg.sender);
            uint amount = msg.value;
            recipient.transfer(amount);
            data += amount;
        }
}
