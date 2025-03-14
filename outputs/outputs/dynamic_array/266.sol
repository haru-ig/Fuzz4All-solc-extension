pragma solidity ^0.8.0;
contract C7 {
    struct T1 { uint256 a; }
    struct T { T1[] b; }
    constructor(uint256 x) public {
        uint256[] memory y;
        y = new uint256[](3);
    }
    function a(uint256 i, T memory x) public {
        uint256 a;
        uint256 sum1;
        uint256 sum2;
        uint256 sum3;
        for (uint256 j = 0; j < 100; j = j + 10) {
            a = a * x.b(i)[0].a + j;
            sum1 = sum1 + a;
            sum3 = sum3 + c(i, x.b(i)[1].a);
        }
        uint256 k = a;
    }
    function c(uint256 x, uint256 y) public pure returns (uint256) {
        return x * y;
    }
}
