pragma solidity ^0.8.0;
contract mutation2 {
    uint256 public c;
    constructor() public {
        c = 5;
    }
    function m() public {
        c = 7;
    }
}
