pragma solidity ^0.8.0;
contract S3 {
    uint16 constant S = 1;
    mapping (uint16 => uint16) m;
    constructor() public {}
    function foo() payable public {
        m[S] = 1;
        uint16 memory = S;
        m[S] = 0;
        uint16[2] memory arrays = [1,2];
        m[S] = 0;
        uint16[4] memory arrays2 = [1,2,3,4];
        m[S] = 0;
        uint16[6] memory arrays3 = [1,2,3,4,5,6,7,8,9,10,11];
        m[S] = 0;
        arrays[S] = 1;
        arrays2[S] = 1;
        arrays3[S] = 1;
        m[S] = 0;

    }
}
