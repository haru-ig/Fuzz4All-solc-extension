pragma solidity ^0.8.0;
contract C {
    uint[] public s1;
    uint[] public s2;
    uint[] public s3;
    constructor() public {
        s1 = new uint[](0);
        s2 = new uint[](0);
        s3 = new uint[](0);
    }
    function f() public {
        s2.pop(); s3.push(3);
        s2 = new uint[](0);
        s1 = new uint[](0);
    }
    receive() external payable {

    }
}
