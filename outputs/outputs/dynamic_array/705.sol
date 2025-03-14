pragma solidity ^0.8.0;

contract test275 {
    uint [999] x;
    constructor() public {
        x.push(1);
        x.push(1);
        x.push(1);
    }
    function test() public returns (bool) {
        if (x[998] == 4) {
            x[7] = 2;
        }
        return false;
    }
}
