pragma solidity ^0.8.0;
contract Bare {
   uint constant minValue = 0;
   uint constant increment = 1;
   uint constant maxValue = 4294967296;
}
contract BareDerived is Bare {
   uint a;
}
contract Derived is Bare {
   uint a;
}
