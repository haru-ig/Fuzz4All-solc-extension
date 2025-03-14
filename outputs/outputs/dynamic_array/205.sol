pragma solidity ^0.8.0;
contract C6 {
    bool public b;
    constructor() {
        b = true;
    }
    function setBool() public {
        b =!b;
    }
}
