pragma solidity ^0.8.0;
contract C {
    bytes32 public foo;
    assembly {


        foo := 0xffffffff00000000000000000000000000000000000000000000000000000000000003
    }
    function() public payable {
        foo = 0x000000000000000000000000000003;
    }
}
