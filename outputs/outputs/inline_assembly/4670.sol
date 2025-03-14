pragma solidity ^0.8.0;
contract mutator83 {
    uint z = 2;

    function add() internal view {
        z+=1;
    }

    function modify() public view {
        add();
    }
}
