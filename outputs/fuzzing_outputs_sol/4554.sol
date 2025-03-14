pragma solidity ^0.8.0;
contract SemanticDifferent2 {
    struct A {
        uint x;
    }
    uint immutable x;

    function A(uint _x) public {
        x = _x;
    }
    function mutate() public pure {
        A storage a = new A(3);
        a.x += 1;
        x = a.x;
    }
}

contract SemanticDifferent3 {
    struct A {
        uint x;
    }
    uint public x;
    constructor() {
        x = 10;
    }
    function A() public {
        x = 10;
    }
    function mutate() public pure {
        (A storage a, uint memory _x) = (new A(7), 7);
        a.x = ((_x + 2) / 2 > x)? 1 : (_x + 2) / 2;
        x = a.x;
    }
}


pragma solidity ^0.8.0;
contract A {
    function fallback(uint) external payable {
    }
}
