pragma solidity ^0.8.0;
contract Mutate74 {
   uint x;
   bytes32 data;
   event CustomEvent(uint id, bytes32 data);
   function Mutate74() public payable {
       x = 10;
       data = bytes32( 1 * 2**220);
        emit CustomEvent(4, data);
    }
}
