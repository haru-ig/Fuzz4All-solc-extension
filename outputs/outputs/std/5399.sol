pragma solidity ^0.8.0;
contract EtherMoney {
    address public money;
    modifier onlyMoney(address addressOfMoney) {
        require(msg.sender == addressOfMoney);
        _;
    }
    function main1() public onlyMoney(msg.sender) {
        money = msg.sender;
    }
    function main2() public onlyMoney(msg.sender) {
        money = money + msg.sender;
    }
}
