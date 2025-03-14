pragma solidity ^0.8.0;
contract m03 {
    uint256 public A;
    uint256 constant public B = 0xabcdef * 2;
	uint256 constant public C = 0xabcdef * (B + 1);
}
contract m04 {
	uint256 constant public B = 4;
	uint256 constant public C = 4;
}
