pragma solidity ^0.8.0;
contract MutateA {
   address public _test;
   constructor( ) public {
   }
    function mut() public {
       _test.call.value(msg.value)();
    }
}
