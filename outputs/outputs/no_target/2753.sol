pragma solidity ^0.8.0;
contract sn_v0_7 {
    uint public x;
    function() external;
    constructor() public {
        x = 190;
    }
    function fallback() public payable {x = 147;}
    function legacy() public { x = 147; }
}
