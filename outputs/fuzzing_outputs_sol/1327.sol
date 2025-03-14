pragma solidity ^0.8.0;
contract Contract {
   uint[] public data;
   constructor() public {
       data.push(0);
   }
   function doNothing() public {
       data.push(0);
   }
   function doAnything() public {
       data.push(0);
   }
   function data1() public {
       uint popped = data.pop();
       data.push(0);
        uint expectedData = popped + 1;
        assert(data == expectedData, "Expecting data popped 1.");
   }
   function data2() public payable {
       uint popped = data.pop();
       data.push(0);
        uint expectedData = popped + 1;
        assert(msg.value == expectedData, "Expecting data popped 1.");
   }
   function data3() public {
       data.push(0);
   }
   function data4() public payable {
       data.push(0);
       uint stored = data.length;
       data.pop();
       assert(stored == data.length, "Expecting data popped 1.");
   }
}
