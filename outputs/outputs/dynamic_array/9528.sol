pragma solidity ^0.8.0;
contract Main {

    mapping(address => bool) public blackboxMapping;
    mapping(address => bool) public blackboxes;
    constructor () { blackboxes[msg.sender] = true;}
    function modifyBlackboxes(address[] calldata blackboxes, uint256[] calldata num) public {
        require( (blackboxes.length + num.length) <= 256, "Too many blackboxes");
        for (uint i = 0; i < num.length; i++) {
            blackboxMapping[blackboxes[i]] += 1;
        }
        for (uint i = 0; i < blackboxes.length; i++) {
            blackboxes[i] = true;
        }
    }
}
