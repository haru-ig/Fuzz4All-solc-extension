pragma solidity ^0.8.0;
contract Test66 {
    struct State {
        bool x;
    }
    uint[] public x;
    function foo(uint64[] memory x) public {
        x[0]=65;
    }


    function() external payable {
        foo(x);
    }
}
