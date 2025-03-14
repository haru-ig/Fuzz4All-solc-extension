pragma solidity ^0.8.0;
contract Test {
    function add(uint a, uint b) public pure returns (uint) {
        return a + b;
    }
    function set() public {
        set(0);
    }
    function set(uint value) public {
        set(value);
    }
    function mutatedGet() public returns (uint){
        set(0);
        return x;
    }
    function mutatedGet(uint value) public returns (uint) {
        set(value);
        return x;
    }
}
