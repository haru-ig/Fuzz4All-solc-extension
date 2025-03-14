pragma solidity ^0.8.0;
contract Array {

   struct Array_Item {
      uint32 id;
      uint256 value;
   }

   address payable m_owner;
   Array_Item[] public items;

   constructor(address payable o) payable {
     m_owner = o;
   }

   function test1() public {
     Array_Item[] memory test = [
       {id: 1, value: 2},
       {id: 2, value: 3}
     ];
    for (uint i = 0; i < test.length; i++) {
        require(
            test[i].value == 3 && test[i].id == 2
      , "Check failed!");
    }
   }

   function test2() public {
    uint32[] memory array = [1, 2, 3];
    uint32[] memory sub;
    for (uint i = 0; i < array.length; i++) {
      sub = sub.concat([array[i]]);
    }
    sub = sub.concat([1, 2, 3]);
    require(sub[0] == 1, "Check failed!");
    sub.length = 0;
    for (uint i = 0; i < 3; i++) {
      sub = sub.concat([array[i]]);
    }
    sub.length = array.length;
    require(sub[0] == 1, "Check failed!");
    uint32 x;
    uint size = sub.length;
    for (uint i = 0; i < size; i++) {
      x = sub[i];
      require(x!= array[i], "Check failed!");
    }
   }

   function find(uint32[] memory query) public view returns (uint, uint) {
    uint n;
    uint m;
    for (uint i = 0; i < items.length; i++) {
         if (items[i].id == query.length && items[i].value == query.length) {
          n = i; break;
         } else if (items[i].id<items[n].id) {
          n = i; break;
     }
    }
    for (uint j = 0; j < query.length; j++) {
         if (items[i].id == query.length && items[i].value == query.length) {
          m = j+1; break;
     }
    }
    return (n, m);
    }
}
