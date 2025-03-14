pragma solidity ^0.8.0;
interface IFallback {
    function data() external view returns (uint);
}
contract Contract {
   uint[] public data;
   constructor() public {
       data.push(0);
   }
   function data() public {
       data.push(1);
   }
}
contract Caller is IFallback, Contract {
   fallback() external payable {
       data.push(2);
   }
   receive() external payable {}

   function data() public {
       data.push(2);
   }
   function data3() public {
       if(data.length == 0) {
        data.push(2);
       }
   }
}
