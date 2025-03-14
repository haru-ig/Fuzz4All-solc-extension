pragma solidity ^0.8.0;
contract C5_20_0 {
   int storedValue;
   int value;
   function setStoredValue (int _x) public {
      storedValue = _x;
      value = storedValue;
   }
   function () external payable {
      value = modint();
   }
}
