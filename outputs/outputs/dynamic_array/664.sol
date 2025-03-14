pragma solidity ^0.8.0;
contract test60 {
    uint[] a;
    constructor() public {
        a = [1, 2];
    }
    function test() public returns (bool) {
        for (uint i = 0; i < a.length; i++) {
            uint i_2 = a[i];
        }
        require(a.length == 2);
        return true;
    }
}
