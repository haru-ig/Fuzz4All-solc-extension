pragma solidity ^0.8.0;
contract Mutate_0022 {
    function f((uint256, uint256) memory memory_0, (uint256) memory arg, uint256 memory_1, string memory_2, uint256 memory_3) public { uint256[3] memory array = new uint256[](4); array[1] = (1, 2); a((uint256)arg, uint256 memory_0, (uint256) array[1], string memory_2, uint256 memory_1); }
    function a(bool cond, uint256 res_0, uint256 res_1, string calldata memory res_2, uint256 memory res_3) { require(cond, "fail"); }
    function b(uint256 res_4, uint256 memory res_5, bool cond, uint256 memory res_6, bytes memory res_7, string calldata memory res_8, uint256 memory res_9) { require(cond, "fail"); }
    function c(string memory calldata res_10, uint256 memory res_11, uint256 res_12, bytes memory res_13) { uint256 i = 0; for (i = 0; i < 0; i++) ; }
}



contract Mutate_0023 {
    function f() public { uint256 memory_a = 0; uint256 x = (this).f(uint(memory_a)); }
    function f(uint256 memory_a) public { uint256 x; }
}



contract Mutate_0024 {
    function f() public { uint256[2] memory memory_a = new uint256[](
