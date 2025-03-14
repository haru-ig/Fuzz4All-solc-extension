pragma solidity ^0.8.0;
contract Test {
    uint private _id;
    constructor() {
        _id = 1 +
       1;
    }
    function getID() public view returns (uint256) {
        return _id;
    }
    function setID() public {
        _id = 1 +
    }
}
