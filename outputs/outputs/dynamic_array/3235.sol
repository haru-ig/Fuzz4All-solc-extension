pragma solidity ^0.8.0;
contract Mut2 {
    mutaing uint[][2] mem_items;
    function setItems(uint[][2] memory new_items) public {
        for (uint i = 0; i < 2; i++) {
            for (uint j = 0; j < mem_items[i].length; j++) {
                if (i == 0) {
                    mem_items[i][j] = mem_items[i][j] + 1;
                } else {
                    mut_items[i][j].push(1);
                }
            }
        }

    }
}
