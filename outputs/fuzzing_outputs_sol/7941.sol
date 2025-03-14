pragma solidity ^0.8.0;
contract FallbackExample
{
   contract Fallback
   {
      fallback(uint _x) external payable {}
      receive() external payable {
        storage x = contract(address(this)).x;
        x = 0;
      }
      mapping (address => uint) x;
      function callF1(uint _x) public {
         fallback(_x);
         x[msg.sender] = 0x1;
      }
   }
   contract Caller
   {
      function callF1() public view {
         FallbackExample _f = contract(address(this));
         contract(address(this)).callF1(_f.F1());
      }
      function F1() public {
            x[msg.sender] = 0x1;
      }
   }

   function callExample() public payable {
      x[msg.sender] = 0x2;
   }
   function fallbackExample(uint _x, uint _y) external payable {}
   function fallbackExample2() public {
      callExample();
   }
   function xExample(uint _a, uint _b) public {
      x[_a] = 0x1;
      _a += _b;
   }
   function xExample2() public view {
      x[0x0] = 0x2;
   }
   function xExample3() public pure {
      x[0x1] = 0x3;
   }
   function xExample4() public pure {
      uint _x = 0x4;
      x[0x0] = _x;
      uint _y = _x;
      x[0x1] = _y;
   }
}
