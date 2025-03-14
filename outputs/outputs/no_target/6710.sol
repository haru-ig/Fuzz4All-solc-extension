pragma solidity ^0.8.0;
contract Mutated17 {
    uint public x = 0;
    function add(uint i){
        x = i + x;
    }
    function foo() public {

        add(1);
        assert(x==12996);
    }
}

contract Mutated18 {
    function add(uint a){
        a = -a;
    }
    function foo(uint e) public {
        add(1);
        assert(e==-2);
    }
}
