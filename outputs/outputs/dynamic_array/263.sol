pragma solidity ^0.8.0;
contract C9 {
    struct T { uint256 a; }
    constructor(uint256 x) {}
    function a(uint256 i, T memory x) public {
        uint8 j; for (j = 0 ; j < 1; j = 100) {
        uint256 sum = uint256(0);
        for (uint8 j = 0 ; j < 1 ; j = 100) {
          sum = sum + i * x.a + c(i, x.a);
        }
        sum = sum + i * x.a + c(i, x.a);
        }
        for (j = 0 ; j < 1 ; j = 100) {
          uint256 sum = uint256(0);
          for (uint8 j = 0 ; j < 1 ; j = 100) {
            sum = sum + i * x.a + c(i, x.a);
          }
          sum = sum + i * x.a + c(i, x.a);
          }
    }
}
