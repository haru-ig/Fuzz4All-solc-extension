pragma solidity ^0.8.0;
contract Constant2 {
   uint public constant ONE = 1;
}
contract NonConstant2 {
   uint8 public nonConstant;
}
contract Array {
   uint[] public x;
   uint8 public elementValue;

   function getValue() public view returns(uint) {
      return elementValue;
   }
   function setElement(uint8 element) public {
      elementValue = element;
   }
   function setValues(uint8 x2, uint8 x1, uint8 y1, uint8 y0, uint8 z1) public {
      x[0] = x1;
      x[1] = x2;
      x[2] = y1;
      x[3] = y0;
      x[4] = z1;
   }
   function getValues() public view returns(uint8, uint8, uint8, uint8, uint8) {
      return (x[0], x[1], x[2], x[3], x[4]);
   }
}
contract Math {
   function squareRoot(uint256 x) public pure returns(uint256 sqrtResult) {
      sqrtResult = x;
   }

   function modularPower(uint256 base, uint256 exponent) public pure returns(uint256 result) {
      if (exponent == 0) {
         result = 1;
      } else if (exponent < 0) {
         result = multiply(base, modularPower(-1, -exponent));
      } else {
         result = multiply(base, modularPower(base, exponent % 2));
      }
   }
}
contract Memory {
   uint[] memory x;
   function getValue() public view returns(uint) {
      uint size = x.length;
      uint elementSize = sizeof(uint);
      uint value = 0;
      for (uint k = 0; k < size; k++) {
         uint index = elementSize * k + 4;
         if (elementSize == 32) {
            value += toUint32(x[k]);
         } else {
            value += toUint256(x[k]);
         }
      }
      return value;
   }
   function setElementData(uint8 element, uint16 value) public {
      elementValue = fromUint16(element);
      elementData = fromUint16(value);
   }
   function setElements(uint8 x1, uint8 x2, uint8 y1, uint8 y0, uint8 z1) public {
      setElementData(x1, fromUint16(0));
      setElementData(x2, fromUint16(1));
      setElementData(y1, fromUint16(90));
      setElementData(y0, fromUint16(270));
      setElementData(z1, fromUint16(180));
   }
   function getElements() public view returns(uint8, uint8, uint8, uint8, uint8) {
      uint8 x1 = elementData;
      uint8 x2 = elementData;
      uint8 y1 = element
