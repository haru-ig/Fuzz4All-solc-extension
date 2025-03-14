pragma solidity ^0.8.0;
contract SemanticYulContract2 {
    uint internal contractCounter;
 uint constant c = 50;
    function subtract(uint x) internal pure returns (uint) {
       assembly {
   add x := 8 + x
}
    return x;
    }
    function power(uint x) internal pure returns (uint) {
      uint temp;
    assembly {
   add temp, c, c, c, c,
   mul temp, x
}
    return temp;
    }
    function addBy(uint x) internal {
      uint temp;
 uint temp2;
        assembly {
   add temp, x
}
        contractCounter += x + temp;
        assembly {
   mul temp2, add temp, temp
}
        contractCounter += temp2;
    }
}
