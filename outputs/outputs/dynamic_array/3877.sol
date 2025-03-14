pragma solidity ^0.8.0;
contract C {
    uint[][][2] b1;
    constructor(uint[][][2] memory a) public {
        b1 = a;

        b1[0][0] = [1, 2, 3];
        b1[0][1] = [5, 6, 7];
    }
    function modify (uint[][][2] memory a) private {
        a[0][0] = [4, 5, 6];
        a[0][1] = [8, 9, 10];
    }
    function func() payable {
        modify(b1);
    }
}
