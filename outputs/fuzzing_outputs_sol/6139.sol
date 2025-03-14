pragma solidity ^0.8.0;
contract S {
    function f() public view { }
}
contract Test is S {
    constructor() {
        (uint256(now));
    }
}
contract Fallback {
    function fallback() external {
    }
}
contract Test is Fallback {
    constructor() {
    }
    fallback () external payable {
    }
}
contract Tester {
    function test() public {
        Test test;
        Test test2;
        (uint256(uint256(uint256(block.timestamp))));
        (uint256(uint256(now)));
    }
}
