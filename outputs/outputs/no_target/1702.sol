pragma solidity ^0.8.0;
contract Mutate0015c {
    mapping (uint8 => bool) internal b;
    uint8 a;
    modifier m() {
        b[a]++;
        _;
    }
    function callMe() public m() {
        a = b[a];
    }
}
