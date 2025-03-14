pragma solidity ^0.8.0;
contract A {
    uint public counter = 0;
    function test() public pure {
        while(now > counter) increment();
    }
    function increment() public {
        counter += 1;
    }
}
