pragma solidity ^0.8.0;
contract Memory{
    modifier Memory_modifier( bytes memory _prefix){
        memory_modifier();
        _;
        _;
    }
    function memory_modifier() returns ( ) {

        assembly {
            mstore(add(memory, 1024), mload(add(mload(mload(add(0x5d5afaed, 0xcafebabe))), 0x20)))
        }
      }
    constructor( ) {
    }
}
