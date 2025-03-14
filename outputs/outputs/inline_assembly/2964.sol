pragma solidity ^0.8.0;
contract A {
    uint public x;
    mapping (uint => uint) mapping2;
    constructor() {
        x = 1;
        mapping2[1] = 4;
    }
}
pragma solidity ^0.8.0;
contract B {
    uint public x;
    mapping (uint => uint) mapping2;
    function() external {
        x = 1;
        mapping2[1] = 4;
    }
}
contract C {
    A a;
    B b;
    constructor(uint a, uint b) public {
        a = A(msg.sender);
        b = B(msg.sender);
    }
    function funcA() public view {
        uint x;
        (x, ) = a.getX();
        (x, ) = b.getX();
    }
    function funcB() public view {
        uint x;
        (x, ) = a.getX();
        (x, ) = b.getX();
    }
}
