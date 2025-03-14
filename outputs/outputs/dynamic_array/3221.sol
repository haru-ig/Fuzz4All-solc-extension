pragma solidity ^0.8.0;
contract Mod {
    uint [99][99] items;
    function setItems(uint [[99][99]] calldata new_items) public {
        items = new_items;
    }
}
```
