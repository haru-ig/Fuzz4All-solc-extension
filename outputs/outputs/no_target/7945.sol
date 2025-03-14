pragma solidity ^0.8.0;
contract TestMutator5 {
    function foo() public {
        require(4 == 2, "A");
        require(10 == 10, "B");
        require(10 == 120, "C");
    }
}

pragma solidity ^0.8.0;
contract TestMutator6 {
    uint256 public x;
    constructor () public {
        x = 0xdeadbeef;
    }
    function bar() public {
        require(x == 0xdeadbeef);
    }
    function update() public {
        while (x!= 0xDEADBEEF) return ;
    }
}
