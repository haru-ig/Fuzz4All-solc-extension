pragma solidity ^0.8.0;
contract S9Mutated {
    uint [7] a;
    constructor () {
        a[0] = 11;
        a[1] = 22;
        a[2] = 33;
        a[3] = 44;
        a[4] = 55;
        a[5] = 66;
        a[6] = 77;
    }
    function sum() public view returns (uint) {
        return a.Sum;
    }
    function set() public {
        a[5] = 66;
    }
}
