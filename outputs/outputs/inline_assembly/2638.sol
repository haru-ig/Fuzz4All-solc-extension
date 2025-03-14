pragma solidity ^0.8.0;
contract Semantic {
    bool b;
    uint public x;
    uint public y;
    uint public z;
}
contract Programmer {
    function foo() public {
        bool temp;
        (b, y, x, temp) = (true, 10, 3, false);
    }
}
