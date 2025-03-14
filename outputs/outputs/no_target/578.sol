pragma solidity ^0.8.0;
contract Test {
    ChildInterface child = ChildInterface(0xDC37A8537128D8013407914dE34C08b3F54197a7);

    function g() external {
        uint a = child.f();
        require(a <= 2**256 - 1);

    }
}
