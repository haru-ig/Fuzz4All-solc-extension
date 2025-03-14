pragma solidity ^0.8.0;
contract mutated is generated {
    uint256 constant public M = 59000000000000000000000000000;
    uint256 constant public N = 5900000000000000000000000000;
    uint256 constant public B = 25;
    uint256 constant public C = 24;
    uint256 constant public D = 22;
}
contract test {
    uint256 constant public M = 59000000000000000000000000;
    uint256 constant public N = 59000000000000000000000000000;
    uint256 constant public B = 25;
    uint256 constant public C = 24;
    uint256 constant public D = 22;
}
contract test2 is mutated, test{
    uint256 constant public R=1000000;

    function test2() {
        uint256[] memory arr = new uint256[](7);
        bool[][] memory res = new bool[7][7];
        for (uint256 i = 0; i < arr.length; ++i) { arr[i] = 0; res[i] = new bool[](8); }
        uint256[2000]
