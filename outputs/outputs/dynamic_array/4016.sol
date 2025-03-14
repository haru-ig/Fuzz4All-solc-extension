pragma solidity ^0.8.0;
contract C {
    uint[] public s1;
    uint[] public s2;
    uint[] public s3;
    constructor() public {
        s1 = [0];
        s2 = [0];
        s3 = [0];
    }
    function f() public {
        if(s2.length == 0) {
            s2 = [0];
            s3 = [3];
        } else {
            s3.push(3);
            s2.pop();
        }
        s2 = [0];
        s1 = [0];
    }
    receive() external payable {
    }
}
