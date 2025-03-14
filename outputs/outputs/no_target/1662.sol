pragma solidity ^0.8.0;
contract Semantic0015b {
    function f(uint128 input) public {
        require(input>0);
        unchecked{input = input*2;}
    }
}
