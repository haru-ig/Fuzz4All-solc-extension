pragma solidity ^0.8.0;
contract Convert {
    bytes32 function1() public returns ( uint x, uint y );
    function1() public returns ( uint x, uint y ) {
        x = uint(10);
        y = 20;
    }
}
