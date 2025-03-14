pragma solidity ^0.8.0;
struct S { uint p; }
struct S2 { uint p; }
contract ContractA {
    S memory s;
    S memory s2;
    S2 public s3;
    S2 public s32;
    function S3() public { s32 = s; }
    function s32(S memory) public { s = s2; s2 = s3; s3 = s; s32 = s2; }
}
contract ContractB {
    function S4() public { s2 = s3; s3 = s; s2 = s3; s32 = s2; }
}
contract B is ContractA, ContractB {
        mapping(address => bool) public vended;
    constructor() public {
      s3 = S(4);
    }
    function () external payable {
      vended[msg.sender] = true;
    }
}
