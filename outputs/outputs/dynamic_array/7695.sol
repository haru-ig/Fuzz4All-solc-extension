pragma solidity ^0.8.0;
contract Test18_semanticsSame_6{
        uint32 public x = 42;
        uint32 public y;
        function add(uint32 x, uint32 y) public view returns (uint32) {
            return x + y;
        }
        function g(uint32 num) public {
            y = add(x, num);
        }
    }
