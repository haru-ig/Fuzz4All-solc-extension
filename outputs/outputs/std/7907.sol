pragma solidity ^0.8.0;
contract Array_4_test {
    static uint64[] constant add = [0x1234234240, 0x42, 0x1434325243, 0x125641045, 0xffffffffffffffff];
    static address[] internal constant a = [0x1234234240, 0x42, 0x1434325243, 0x125641045, 0xffffffffffffffff];



    function add1() public pure returns (uint64) {
        uint64 num = add.length;
        uint64 sum = 0;
        for (uint64 i = 0; i < num; ++i) {
            sum += add[i];
        }
        return sum;
    }
  function add2() public returns (uint64) {
    return add.length;
  }





  function test1() public pure returns (uint64) {
    return add1();
  }
  function test2() public pure returns (uint64) {

    return 1;
  }
  function test() public view returns (uint64[]) {
    uint64 x = test1();
    return add;
  }
  function test_add(Array_4 memory A) public pure returns (uint64[]) {
    Array_4 memory B;
    uint64 x = test1();
    return B.add;
  }
  function test_add1() public pure returns (uint64[]) {
    Array_4 memory A;
      uint64 x = test1();
      return A.a1;
  }
  function check(uint64[] memory expected, uint64[] memory returned) public view returns (uint64[]) {
    uint64 x = 1;
    for (uint64 i = 0; i < 6
