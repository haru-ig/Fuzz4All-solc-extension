pragma solidity ^0.8.0;
contract S8Mutated10 {
    uint8[10] a;
    constructor () {
        a[0] = 156;
        a[100] = 1;
    }
    function change2() public {
        a[2] = 149;
    }
}
