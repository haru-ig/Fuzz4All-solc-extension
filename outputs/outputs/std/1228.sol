pragma solidity ^0.8.0;
contract C5_19_3 {
   uint _x;
}
contract C5_19_4 {
   uint _y;
}
contract C5_22_0 {
   uint _x;
   uint _value;
   function setX(uint value) public {
      _x = value;
   }
   function getValue() public view returns (uint) {
      return _x + _value;
   }
   function calc() private {
      _value = 1;
   }
   function setY(uint _y) public {
      _y = _x + _y;
      _value = _y - 1;
      emit X(_x, _y, _x + _y);
   }
}
contract C5_18_0 {
   uint _y;
   function setY(uint _y) public {
      _y = 1;
   }
   function getY() public pure returns (uint) {
      return _y;
   }
}
contract C5_17_0 {
}
contract C5_17_5 {
}
contract C5_17_6 {
   bool _b;
}
contract C5_17_7 {
}
contract C5_18_1 {
}
contract C5_17_8 {
}
contract C5_22_1 {
   uint _x;
   uint _y;
}
