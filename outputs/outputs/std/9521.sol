pragma solidity ^0.8.0;
contract  Mutate5 {
    address public address;
    function setarray10() public {
        address = msg.sender;
    }
    address[] private addressarray10;
}
