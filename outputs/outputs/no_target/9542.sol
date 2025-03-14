pragma solidity ^0.8.0;
library SomeLibrary {
   using Math for uint256;
   uint private constant constant1 = 1;
   uint256 constant private constant2 = 2;
}
contract Test {
   Interface16 private _instance;
   uint public constant _a = interface(Interface16).testEvent();
   uint public constant _b = SomeLibrary.constant1 * 2;
   address public constant _c;
   address public constant _d;
   address public _sender;
   modifier onlySender {
      require(msg.sender == _sender, 'INVALIDCALL');
      _;
   }
   event ContractCreated();
   event Event(address indexed _sender);
   constructor(
      address sender,
      Interface16 instance
   ) {
      _sender = sender;
      _instance = instance;
   }
   function test() external view returns(bool);
}
