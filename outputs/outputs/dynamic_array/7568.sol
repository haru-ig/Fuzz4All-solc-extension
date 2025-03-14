pragma solidity ^0.8.0;
contract Test14 {
    constructor() public {
        uint[2] memory A(1,1);
        uint[2] memory B(1,1);
        A[1]+=1;
        B[1]+=1;
        A[0]+=1;
        B[0]+=1;
    }
}
