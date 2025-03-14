pragma solidity ^0.8.0;
contract Restricted2 {
    function test(address a, uint32 x) public {
        require(x == 23);
        a = 3;
    }
}
