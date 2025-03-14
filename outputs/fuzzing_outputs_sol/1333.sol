pragma solidity ^0.8.0;
struct Caller {
   mapping(uint => bool) public contractHasPayableFallback;
}
contract Contract {
   uint[] public data;
   Caller public caller;
   function call() public {
       require(msg.value >= data.length * 2);
       require(!caller.contractHasPayableFallback[data.length]);
       caller.contractHasPayableFallback[data.length] = true;

       caller.contractHasPayableFallback[data[data.length]] = false;
   }
}
contract Fallback {
  function() external payable {}
}
contract Contract {
   uint public i;
   fallback public f;
   event Emitted();
   constructor() public {
       f = new Fallback;
   }
   function func() public {
       i = 1;

       emit Emitted {a : 1};
       data[i] = 2;
   }
}
