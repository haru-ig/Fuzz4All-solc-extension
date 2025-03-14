pragma solidity ^0.8.0;
contract Contract {
   function doNothing() public {
   }
   mapping(uint => uint) public dataMap;
   constructor() public {
       dataMap[0] = 0x0, dataMap[1] = 0x1, dataMap[2] = 0x3;
   }
   function data1() public {
       dataMap[0] += 0xff00ff00;
       emit dataChange(dataMap, 0);
   }
   function data2() public {
       require(dataMap[0] >= 1, "Nothing!");
       dataMap[2] += 0xff00ff00;
       dataMap[0] += 0xffff00ff;
       emit dataChange(dataMap, 0);
   }
   function dataChange (mapping(uint => uint) memory _dataMap, uint _amount) public {
       emit dataChange(_dataMap, _amount);
   }
   event dataChange( mapping(uint => uint), uint amount );
}
