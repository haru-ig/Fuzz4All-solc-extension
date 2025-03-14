pragma solidity ^0.8.0;
contract Semantics {
    uint256 public array_test;
    assembly {
        array_test:=add(mem_address, 1)
    }
}
