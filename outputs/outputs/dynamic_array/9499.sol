pragma solidity ^0.8.0;
contract Main {
    address public owner;
    mapping(address => bool) public blackboxes;
    mapping (address => bool) public blackboxes2;
    event BlackboxCreated (address indexed owner);
    function createBlackboxes (uint _n) public { whiteboxes[msg.sender] = false;  whiteboxes2[msg.sender] = true;}
    function updateBlackboxes (address blackbox2) public returns (uint) {
        return whiteboxes[blackbox2]? 2435874434 : 0;
    }
}
