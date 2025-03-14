pragma solidity ^0.8.0;
contract Test26 {
    uint public x = 122;
    uint constant y = 36;
    constructor() external {}
    modifier only_admin() {
        assert(msg.sender == admin);
        _;
    }
    uint public p = 123;
    function setx() public {
        x = y;
        p = 234;
    }
}
