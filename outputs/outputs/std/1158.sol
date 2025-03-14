pragma solidity ^0.8.0;
contract B1_Array {
    uint256[] a;
}
contract B2_Array {
    uint256[] b;
}
contract B3_Convert {
}
contract B4_Memory {
    function f() public { return a; }
}
contract B5_Multiprecision {
    function iadd(uint v) public returns (uint256) { return 1; }
}
contract B6_Random {
    function f() public pure returns (uint256) { return 2; }
    function g() public pure returns (uint[]) { uint[] memory a = new uint[](5); a[0] = 1; return a; }
}
