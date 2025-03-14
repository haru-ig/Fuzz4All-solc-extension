pragma solidity ^0.8.0;
contract EquivalentSolidity {
    function x() public pure returns
    (
        uint
    ) {
  uint x=167;
  uint y;
        x = x + 17;
  x = x + 17;
  x = x + 17;
  x = x + 17;
  x = x + 17;
  x = x + 17;
  x = x + 17;
  x = x + 1;
        return x;
    }
}




pragma solidity ^0.8.0;
contract TestContract {
    uint[10] dynamic data;
    function f() public pure returns (uint) {
        data[0] = 1;
        data[1] = 2;
        data[2] = 3;
        return data[3];
    }
}
/* The following program demonstrates a fixable bug in Solidity. Dynamic array initialization will fail in Solidity 0.5.3 and earlier, and will silently fail in newer versions, but it may be detected at compile-time by using tests.sol. The bug relies on the use of static arrays, which may
