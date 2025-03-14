pragma solidity ^0.8.0;
contract Mutate2 {
    function update() public {
       uint _oldInt;
       assembly {
           _oldInt := mload(0x10)
       }
    }
}
