pragma solidity ^0.8.0;
contract MutatedGeneration8 {

    struct x{uint256 x; }
    function sub(uint256 y) public {
        x.x = x.x - y;
    }
    function add(uint256 y) public {
        x.x = x.x + y;
    }
}
