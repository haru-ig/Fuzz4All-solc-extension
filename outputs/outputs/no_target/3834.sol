pragma solidity ^0.8.0;
contract S3 {
        uint private a;
        uint private b;
    constructor() public {
        a = 16;
        b = 24;
    }
    function changeX() public {
        a+=1;
        b= (a+2)*(a+3);
    }
}
