pragma solidity ^0.8.0;
contract Test {
    uint internal x;
    function mutatedSet(uint a) public {
        x++
    }
}
