pragma solidity ^0.8.0;
contract Mutated {
    bytes32 internal x;
    bytes32 y;
    bytes32 z;
    function Add(bytes32 b1,uint y_)public {
        if (y_ == 16) {
            y = "0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000007";
            add();
        }
    }
    function add() public {
        z += x;
    }
}
