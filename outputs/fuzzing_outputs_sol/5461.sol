pragma solidity ^0.8.0;
contract successmutablefallback6_1 {
    receive() external payable {}
}
contract callmutatedfallback6_1 {
    constructor() public {}
    receive() payable external {}
}

contract contract4 {
    function test() public pure {
        uint256 foo = 100;
        (foo, uint256 bar) = (88, foo);
    }
}
 contract contract3 {
    function test() public pure {
        uint256 foo = 100;
        (uint256 bar, foo(bar)) = (88, foo);
    }
}
contract constructorcall6_1 {
    constructor() public {}
    function test() public pure {
        uint256 foo = 100;
        (foo, uint256 bar) = (88, foo);
    }
}
contract constructorcall6_2 {
    constructor() public {
        uint256 foo = 100;
    }
    function test() public pure {
        uint256 foo = 100;
        (foo, uint256 bar) = (88, foo);
    }
}


contract constructorcall7 {
    constructor(uint foo) public { }
}
contract constantscall6 {
    uint constant intmax = 85078356;
}
contract constructorcall7_1 {
    constructor(uint _foo, uint _bar) public {
    }
}
contract contract5 {
    function test() public pure {
        uint256 foo = 100;
        (foo, uint256 bar) = (42, foo);
    }
}
contract contract6 {
    function test() public pure {
        uint256 foo = 100;
        (uint256 bar, foo(bar)) = (17, 42);
    }
}
contract successmutablefallback7 {
    receive() external payable {}
}
contract callmutatedfallback7 {
    constructor() public {}
    receive() payable external {}
}
