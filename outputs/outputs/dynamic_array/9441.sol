pragma solidity ^0.8.0;
contract Arrays12 {
    struct Struct { uint value; uint256 value2; }
    Struct[] private s3;
    constructor() public{
        s3.length = 2;
        s3[0].value = 123;
        s3[0].value2 = 321;
        uint256 a = s3[1];
        s3.length += 1;
        s3.length = 3;
        s3[2].value = 321;
        s3[2].value2 = 3;
    }
}
