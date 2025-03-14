pragma solidity ^0.8.0;
contract Modifications2P2 {
    function f() public returns (uint) {
        uint s = 0;
        unchecked {
            s += 10;
        }
        x = uint(s > 2? 2 * s - 10 : s - 9);
        return uint(a / 4 > b);
    }
    uint public a;
    uint public b;
    uint public x;
}
