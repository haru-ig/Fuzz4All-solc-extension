pragma solidity ^0.8.0;
contract Contract2 {
    bytes32 public mybytes32 = "MyBytes32";
    function setbytes32(bytes32 newbytes32)public{
        mybytes32 = newbytes32;
    }
}
