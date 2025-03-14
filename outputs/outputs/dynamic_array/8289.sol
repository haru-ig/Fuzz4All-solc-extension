pragma solidity ^0.8.0;
contract Solidity2 {
    struct S {
        uint c;
    }
    S public s1;
    S public s2;
    S public s3;
    constructor() public {
        s1.c = 1;
        s2.c = s1;
        s3.c = s2;
    }
    function myFunction(S memory s1, S memory s2, S memory s3) public {
        s1.c = 10;
        s2.c = s1;
        s3.c = s2;
    }
}
