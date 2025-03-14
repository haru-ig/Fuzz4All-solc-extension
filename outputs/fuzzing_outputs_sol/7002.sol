pragma solidity ^0.8.0;
contract Test {
    uint internal x;
    function set(uint a) public {
        x = a;
    }
    function mutatedGet() public returns (uint){
        return x;
    }
}
