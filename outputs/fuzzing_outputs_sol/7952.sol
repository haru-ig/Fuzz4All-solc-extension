pragma solidity ^0.8.0;
contract Equivalent2
{
   function modifiedSendEther(uint x, address addr) public payable
   {
       (bool success, ) = msg.sender.call{value: x}(this.target);
       assert(success);
   }
}

pragma solidity ^0.8.0;
contract Equivalent3
{
   function modifiedSendEther(uint x, address addr) public payable
   {
       (bool success, ) = addr.call{value: x}(new bytes(0));
       assert(success);
   }
}

pragma solidity ^0.8.0;
contract Equivalent4
{
   function modifiedSendEther(uint x, address addr) public payable
   {
       let s = addr.call{value: x}(new bytes(0));
       assert(s);
   }
}
contract Caller {
   function callWithEthers() public payable {
      (bool success, uint x,, ) = msg.sender.call(new bytes(0));
      assert(success);
      assert(x == 2000);
      (bool success2,, ) = msg.sender.call(new bytes(0));
      assert(success2);
      assert(x == 2000);
      (bool success3,, ) = msg.sender.call{value: 500}(new bytes(0));
      assert(success3);
      assert(x == 7000);
   }
   uint x;
   constructor (uint a) { x = a; }
}
