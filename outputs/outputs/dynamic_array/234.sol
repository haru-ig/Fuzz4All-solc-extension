pragma solidity ^0.8.0;
contract C8 {
    constructor(T memory x) {}
    function mutate(T memory x) public {
        uint256 x_s;
        (x_s, x.s) = (x_s+x.s, x_s-x.s);
    }
}
