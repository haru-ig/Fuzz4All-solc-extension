pragma solidity ^0.8.0;
contract Mutated {
    function test() public {
        bytes memory a = new bytes(41);
        bytes memory b = new bytes(42);
        bytes memory c;
        c = a;
        a[42] = 42;
        c = b;
    }
}
