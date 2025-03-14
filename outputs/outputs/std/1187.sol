pragma solidity ^0.8.0;
contract A {
   address public _addr;
   function setAddr(address addr) public {
       _addr = addr;
   }
   function returnAddr() public view returns(address) {
       return _addr;
   }
}
contract C {
   function setAddr(address addr) public {
       addr.transfer(msg.sender);
   }
   function returnAddr() public view returns(address) {
       return addr.balance;
   }
}
contract B is A, B2, C {

   constructor() public
   {
       setAddr(msg.sender);
   }
   function setAddr(address addr) public {
       addr.transfer(msg.sender);
       _addr = addr;
   }
}
contract D {
   function setAddr(address addr) public {
       addr.transfer(_addr);
   }
   function returnAddr() public view returns(address) {
       return _addr;
   }
}
contract E {
   function setAddr(address addr) public {
       addr.transfer(msg.sender);
       addr.transfer(_addr);
   }
   function returnAddr() public view returns(address) {
       return _addr.value(34);
   }
}
