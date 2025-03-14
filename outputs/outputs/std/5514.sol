pragma solidity ^0.8.0;
@external
contract Mutate10 {
    function test() private {
        b[3] = 65535;
    }
}
