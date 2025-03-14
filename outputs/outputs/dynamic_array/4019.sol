pragma solidity ^0.8.0;
contract C {
    uint[] public s1;
    uint[] public s2;
    uint[] public s3;
    constructor() public {
        s2.push(2);
        s3 = new uint[](0);
        s2.push(1);
        s1 = new uint[](0);
    }
    function f() public {
        uint[1] memory t1;
        uint[2] memory t11;
        uint[2][3] memory t111;
        uint[1][5] memory t1111;
        s1.pop();
        s3.push(3);
        s2 = new uint[](0);
        s1 = new uint[](0);
        t1 = new uint[](0);
    }
    receive() external payable {
    }
}
