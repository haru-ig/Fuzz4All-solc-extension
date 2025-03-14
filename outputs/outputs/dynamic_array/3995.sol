pragma solidity ^0.8.0;
contract C {
    bytes[] public s1;
    bytes[] public s2;
    bytes[] public s3;
    constructor() public {
        s1.push(1);
        s2.push(2);
    }
    function f(bytes[] memory x, bytes[] memory y, bytes[] memory z) public {
        s1.push(1);
        s2.push(2);
        s3.push(3);
    }
}
