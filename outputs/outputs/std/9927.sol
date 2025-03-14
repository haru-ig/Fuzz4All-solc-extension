pragma solidity ^0.8.0;
contract S11Mutated13 {
    uint256 a;
    constructor () {
        a = 0;
    }
    function change() public {
        a *= 2;
    }
}
contract S13Mutated13 {
    uint256 b;
    constructor () {
        b = 0;
    }
    function change() public {
        b += 1;
    }
}
