pragma solidity ^0.8.0;
contract Mutate8 {
    function f() public pure{require(false);}
    constructor() {
        require(keccak256(abi.encodePacked(uint(f)))) <= 1;
    }
}
