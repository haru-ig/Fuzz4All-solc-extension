pragma solidity ^0.8.0;

contract Contract {
   function doNothing() public {
   }
   uint[] public data;
   modifier noFallback() {
       data.push(1);
       _;
   }
   constructor() public {
       data.push(0);
   }
   function data1() public {
       data.push(1);
   }
   function data2() public noFallback {
       require(data.length >= 2, "Nothing!");
       data.push(2);
   }
}

contract HasFallback {
    address payable contractOwner;
     function () external payable {}
    function () external payable {}
    constructor() public {
        contractOwner = msg.sender;
    }
    function () external payable {}
    function test() public {
        require(contractOwner.send(msg.value), "Ether is not sent");
    }
}
