pragma solidity ^0.8.0;
contract S260Mutated13 {
    uint8 a = 120;
    constructor () {
    }
    function change() public payable {
        a = 55;
    }
    function change2() public {
        a -= 1;
    }
}
contract S64Mutated14 {
    uint8 a = 238;
    uint8 b = 238;
    uint8 c = 238;
    constructor () {}",
    function change() public {
        uint8 tmp = 0;
        b += 0;
        c -= 7;
        tmp /= 0;
    }
}
