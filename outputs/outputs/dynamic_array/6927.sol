pragma solidity ^0.8.0;
contract Test3 {
    struct S3 {
        bytes32 foo;
        bool[30] bar;
    }
    bytes32[] storageT;
    bytes32[] storageS3;
    constructor() {
        while (true) {
            storageT.add();
            storageS3.add();
            if (uint256(storageT.length)-1 > 30) break;
        }
    }
}
