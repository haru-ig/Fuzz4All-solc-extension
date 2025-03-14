pragma solidity ^0.8.0;


contract EgInlineAssemblyApp
{
   bool success = false;
   uint constant numBytes = 64;
   bytes memory a = hex"FF".repeat(numBytes);
   bytes memory b = b"FF";
   bytes memory c;


   bytes32 h = 2e1212;
   bytes20 i = 0;

   function test() public view returns(bytes memory, bytes memory, bytes memory) {
       try inlineAssemblyBytes(a) { }
       catch Error(string memory _msg)
    {
       return (a, hex"00".repeat(numBytes), hex"00".repeat(numBytes));
     }
   }

   function inlineAssemblyBytes(bytes memory _a)
     internal
     view
     returns(bytesmemory, bytes memory, bytes memory)
   {
      assembly {

        let j := mload(add(_a, 0x200))
        mstore(add(a, 32), mload(add(_a, 32)))


        let i := mload(add(j, 0x200))
        mstore(add(b, 32), mload(add(j, 32)))
        mstore(add(b, 64), mload(add(j, 64)))


        mstore(add(c, 32), mload(add(_a, 32)))
        mstore(add(c, 64), mload(add(_a, 64)))
      }


      success := success && (a == hex"FF".repeat(numBytes));
      success := success && (b == b"FF".decodeURI());
      success := success && (c == _a);
      return (a, b, c);
  }
}
