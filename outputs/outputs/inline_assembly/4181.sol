pragma solidity ^0.8.0;
contract Mutators7 {
    function increment (uint a) public returns (uint) {
        a = a + 1;
        return a;
    }
}
contract Mutators8 {
    function increment (uint a) public returns (uint) {
        a = a + 1;
        a = a + 1;
        a = a + 1;
        return a;
    }
}
