pragma solidity ^0.8.0;
contract Contract {
   uint[] public data;
   Contract2 myContract;
   constructor() public {
       data.push(0);
   }
   function data1() public {
       data.push(1);
       myContract = new Contract2();
   }
   function data2() public {
       require(data.length >= 2);
       data.pop();
       myContract.data3();
   }
   function data3() public {
       data.push(3);
   }
}

pragma solidity ^0.8.0;
contract Contract {
   uint[] public data;
   constructor() public {
       data.push(0);
   }
   function data1() public {
       data.push(1);
   }
   function data2() public {
       require(data.length >= 2);
       data.pop();
   }
   fallback() external {}
}
