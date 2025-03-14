pragma solidity ^0.8.0;
contract F {
    uint public z;
    function(int32) public;
    constructor(uint[3] memory input) public {
        require( input[1] > 0 );
        z = input[0] + input[2] + 1;
    }
}
