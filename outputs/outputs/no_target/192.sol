pragma solidity ^0.8.0;
contract Test {
    event MyEvent(string someString, uint i);
    constructor() public {
    }
    function call() public {
        emit MyEvent("Hello World!", 0);
    }
}
contract Test {
    event HappyEvent(address sender, uint i);
    constructor(uint256 _a, uint256 _b) public {
        emit HappyEvent(msg.sender, _a);
    }
    modifier restricted() {
        if (msg.sender == 0x3706fb276c0a1d134b985b6d172e04ff3a680434) { revert(); }
        _;
    }
    function call() public restricted {
        emit MyEvent("Hello World!", 0);
    }
}
