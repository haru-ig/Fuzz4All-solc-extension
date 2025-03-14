pragma solidity ^0.8.0;
contract Mod {
    uint[99][9] items;
    uint[99][9] getItems;
    function setItems(uint[99][99] memory new_items) public {
        getItems = new_items;
    }
}

pragma solidity ^0.8.0;
contract Mod {
    uint[99][9] items;
    uint[99][9] getItems;
    mapping(uint => uint) nextItems;
    function setItems(uint[99][9] memory new_items) public {
        getItems = new_items;
        for(uint i = 0; i < getItems.length; i++) {
            for(uint j = 0; j < getItems[i].length; j++) {
                if(j!= 0) {
                    nextItems[i*getItems[i].length + j] = 0;
                }
            }
        }
    }
}

pragma solidity ^0.8.0;
contract Mod {
    uint[99][9] items;
    mapping(uint => uint) nextItems;
    uint[8][7] nestedItems;
    function setNestedItem(uint[8][7] memory new_items) public {
        nestedItems = new_items;
        for (uint j = 0; j < nestedItems[4].length; j++) {
          for(uint i = 0; i < nestedItems[4][j].length; i++) {
            if(nestedItems[4][j][i]!= 0) {
              nextItems[(uint(nestedItems[2])) * 3 + uint(j)] * 5 + uint(i)]++;
            }
          }
        }
    }
}

pragma solidity ^0.8.0;
contract Mod {
    uint[99][9] items;
    uint[99][9] getItems;
    mapping(uint => uint) nextItems;
    uint[90][] arrayItems;
    uint[90][] getArrayItems;
    function setItems(uint[99][9] new_items) public {
        getItems = new_items;
        arrayItems = new_items;
        for(uint i =
