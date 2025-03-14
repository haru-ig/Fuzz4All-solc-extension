pragma solidity ^0.8.0;
contract Test {
    uint public x;
    fallback function fallbackTest() public payable {
        x += 1;
    }
    function set(uint a) public {
        x = a;
    }
    function mutatedGet() public returns (uint){
        return x;
    }
}
