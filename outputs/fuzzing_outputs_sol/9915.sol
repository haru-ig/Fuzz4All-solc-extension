pragma solidity ^0.8.0;

contract New is New2 {
    function new_(uint a) public pure override returns(uint) {
        return 2*a;
    }
}
