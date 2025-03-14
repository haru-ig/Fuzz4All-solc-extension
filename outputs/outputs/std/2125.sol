pragma solidity ^0.8.0;
contract Mutated_3_4_0 {
    function max(uint x, uint y) public pure returns (uint a) {
        a = x > y? x : y;
        require(a <= x, 'Second input must be <= first input');
    }
}


pragma solidity ^0.8.0;
contract Mutated_3_4_0 {
    uint public foo;
    uint private bar;
    uint foo2;


    function getVar() public pure returns (uint) {
        return foo2;
    }

    function set(uint x) public {
        foo = 10;
        bar = x;
        foo2 = 100;
    }
}

pragma solidity ^0.8.0;
contract Mutated_3_4_0 {
    uint public foo;
    uint private bar;
    uint foo2;


    function getVar() public pure returns (uint) {
        return foo2;
    }

    function set(uint x) public {
        foo = 10;
        bar = x;
        foo2 = 100;
    }
}
