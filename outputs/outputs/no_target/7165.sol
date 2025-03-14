pragma solidity ^0.8.0;
contract Test {
    uint id;
    uint256 internal counter;
    function setID() public {
        id = 1;
        counter++;
    }
}
