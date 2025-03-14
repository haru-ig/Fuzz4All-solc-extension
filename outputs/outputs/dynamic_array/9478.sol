pragma solidity ^0.8.0;
contract Main {
    address public owner;
    address[] public blackboxes;
    constructor (address initialOwner) public { owner = initialOwner; }
    function addBlackbox (bool value) public {
        uint x = 10**10;
        if (value) {
            blackboxes.push(x);
        }
    }
}
