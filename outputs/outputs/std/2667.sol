pragma solidity ^0.8.0;
contract Memory{
   uint8 a;
   uint8 public b;
   uint8[] memory c;
   uint256[2] memory d;
   uint256[][] memory e;
   uint256[(10,10)] memory f;
   uint8 public g;
   uint32[5] memory h;
   uint8[9] memory i;
   uint32[1] memory j;
   uint8 public k;
   uint32 public l;
   uint256 public m;
   uint8 data;
   function getA()public pure returns (uint8) {
      return a;
   }
   function setA(uint8 x)public {
      a = x;
   }
   function setA2(uint8 x)public returns (uint8) {
      a = x;
      return a;
   }
   function testAddress()public pure returns (address) {
      return address(0x56d22F622e046299149A78aE77A27843E28223ab);
   }
   function testString()public pure returns (string memory) {
      return "Hi";
   }
   function memoryRead()public view returns (uint8) {
      return a;
   }
}


contract MemoryContract is Memory{
   bool public memoryAccess;
   address public caller;
   constructor()public {
      memoryAccess;
   }
   function setData(uint8 x)public {
      memoryAccess = true;
      data = x;
   }
   function transferFrom(address _from, uint256 _value)public {
   }
   event Transfer(address indexed _from, uint256 _value);
   modifier onlyCaller() {
      require(msg.sender == caller, "only caller can access");
      _;
   }
   function callWithCaller()public onlyCaller {
      caller = msg.sender;
   }
   function callWithValue(uint256 _value)public payable {
   }
   modifier onlyCallerOrRefund() {
      require(msg.sender == caller || (msg.value >= 60 && msg.value <= 62), "only caller or refund can access");
      if(msg.value > 10){
         _;
      }else{
         msg.sender.transfer(msg.value);
      }
      _;
   }
}
