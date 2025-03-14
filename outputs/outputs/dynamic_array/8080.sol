pragma solidity ^0.8.0;
interface IFabric {
    function appendBytes() external;
    function appendBytes2(address to) external;
    function appendBytes3(uint i) pure external returns(uint);
}
contract Fabric is IFabric {
    bytes7 public y = "This is an empty bytes7 contract field.";

   function appendBytes() public {
       y += 255;
   }
   function appendBytes2(address _to) public {
       _to.call("");
   }
   function appendBytes3(uint i) pure public returns(uint) {

       return i;
   }
}



contract Fabric {




  address public myAddress;

  mapping(address => bytes32) public name;

  mapping(address => bytes32[4]) public nameBytes;

  mapping(address => IFabric) public f = new IFabric();

  event Log(bytes32 b, bytes32[] buf);

  function appendBuffer(bytes32[] memory buf) public {
    name[msg.sender] += buf;
  }

  function testBytes() public {
    bytes1 buffer[1] = new bytes1[](1);
    buffer[0] = 3;
    for (uint i=0; i<10; i++) {
      nameBytes[msg.sender][i] += buffer;
    }
  }

  function
