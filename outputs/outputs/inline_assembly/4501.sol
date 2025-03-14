pragma solidity ^0.8.0;
contract Emulator2 {
    uint x; uint y;
    function init() public {
        x = add; uint x2 = mul;
        x = sub(x2, x);
        x = mul(x, x);
        x = div(x, x);
        x = mod(x, x);
        x = div(x, x);
        x = mod(x, x);
        x = sqrt(x);
        uint a = x/x;
        x = sqrt(x);
        a = a/x;
        x = sqrt(x);
        x = sqrt(x);
        x = sqrt(x);
        x = sqrt(x);
    }
    function add(uint x2) public pure returns(uint) {
        uint z =
