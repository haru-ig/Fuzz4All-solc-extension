pragma solidity ^0.8.0;
contract m06 {
    uint256 c;
    constructor() public {
        c = 5;
    }
    function M6(uint256 x) public {
        c = 5;
        if (!x) {
            c = 6789;
        }
        (x * (uint256)c < 10e7);
    }
}
