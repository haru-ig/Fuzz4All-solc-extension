pragma solidity ^0.8.0;
contract Main {
    address public owner;
    uint256 public totalValue;
    mapping (address => uint256) public blackboxes;
    event BlackboxCreated (address indexed owner);
    constructor () { owner = msg.sender;}
    function createBlackboxes (address blackbox) public { blackboxes[blackbox] = totalValue; }
    function updateBlackboxes (address blackbox) public {
        if (blackboxes[blackbox]!= (totalValue / 10)) { return; }
        blackboxes[blackbox] += 1;
    }
}
