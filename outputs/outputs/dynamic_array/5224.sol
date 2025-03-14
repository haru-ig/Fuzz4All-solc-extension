pragma solidity ^0.8.0;
contract Test23 {
    mapping(uint => uint) a;

    function test() internal { a[1] = 2; }

    function test2() view { test(); }
}


pragma solidity ^0.8.0;

contract Test19 {
    function g() public pure { memory[1] memory b = new memory[1]; memory storage a = new memory[1]; b[0] = a[0]; }
}

pragma solidity ^0.8.0;
contract test47 {
    uint[6] public x;

    function f() public view {
        function g() public pure { x[1] = 2; }
        g(); g(); g(); g(); g(); g(); g(); g(); g(); g(); g(); g(); g(); g(); g(); g(); g(); g(); g(); g(); g(); g(); g(); g(); g(); g(); g(); g(); g(); g(); g(); g(); g(); g(); g(); g(); g(); g();
    }
}
