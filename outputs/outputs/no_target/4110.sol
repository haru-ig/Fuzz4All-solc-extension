pragma solidity ^0.8.0;
contract S3 {
    uint256 internal constant s3_internal = 0xb5ad000000000000;
    uint256 public s3 = s3_internal;
    function h(uint x) internal returns (uint256) { return s3_internal; }
}
contract CallerIsS3 {
    S3 s3;
    constructor() { s3 = new S3(); }
    function f() public {
        s3.h(uint256(-1));
    }
}
