pragma solidity ^0.8.0;
contract SemanticsEquivalence6 {
    struct Data { uint x1; uint x2; uint x3; }
    uint internal x1;
    Data internal data;
    function run() public {
        uint j;
        for (j = 1; j < 2; j++) {
            x1 = data.x2 + j;
        }
    }
    Data internal data2;
}
contract Contract1 {
    function run(uint y) public returns (uint) {
      uint x = 2*y;
      return y + y;
    }
}
contract Contract2 {
    function f() public pure returns(uint) {
      return 1;
    }
}
contract Contract3 {
    contract Inner {
        function f(uint) public pure returns (uint) {
          return 1;
        }
    }
    function f(uint) public returns (uint) {
        return Inner.f(y);
    }
    uint internal x;
    uint internal y;
    function setY(uint y) public {
        y = y;
    }
}
contract Contract4 {
    function run(uint y) public returns (uint) {
      uint x =
