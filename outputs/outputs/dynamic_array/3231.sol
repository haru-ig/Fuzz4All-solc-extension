pragma solidity ^0.8.0;
address payable owner = payable(0x19062D0B86734A3D804646C9a3d37e369E22972d);
contract Mod {
    Mod public  mod;
    function setItems(uint[] calldata new_items) public {
        for (uint i = 0; i < new_items.length; i++) {
            items[new_items[i]] = new_items[i];
        }
    }
}
