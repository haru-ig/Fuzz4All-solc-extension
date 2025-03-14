pragma solidity ^0.8.0;
contract InlineAssembly {
  void increment() internal {
    i++;
  }
  function setNewV(uint16 v) internal {
    newV = v;
  }

   function main() internal {
    increment();
    setNewV(c);
    require(i == (newV + 3));
  }
}
