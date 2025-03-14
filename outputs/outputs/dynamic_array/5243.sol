pragma solidity ^0.8.0;
contract Test178 {
    function g(int[] memory d) public pure {
        d[0] = 1;
    }
}


pragma solidity ^0.8.0;
contract Test176 {
    function g() public pure {
        int[] memory b;
        b[0] = 1;
        g(b);
        b[4294967295 - 1] = 2;
        g(b);
    }
    function g(int[] memory d) public pure {
    }
}


pragma solidity ^0.8.0;
contract Test192 {
    address payable p;
    constructor () { p = payable(0xDEADBEEF); }
    contract Address { uint public constant value = address(this).balance; }
    function a (address payable x) { emit event(x, p.sendValue(Address.value)); c.sendValue(Address.value); }
    function b (address payable x) { emit event(x, x.call{value:0}(newaddress())); }
    int x;
    struct c { address payable f; }
    c c;
    struct y { address y; }
    y[] memory a;
    function event(address x, address x, y) { emit c(); emit y(); }
}


pragma solidity ^0.8.0;
contract Test1088 {
    function foo() public { emit event(); emit event(); emit event(); }
}


pragma solidity ^0.8.0;
contract Test992 {
    function foo() public { uint x=1; uint[] memory y; foo1(); foo2(); function foo1() public { x = x + foo2(); emit event(); } }
    function foo2() public { y[1].f; }
}


pragma solidity ^0.8.0;
contract Test535 {
    int private x;
    function f(uint y) public returns (uint) {
        return x;
    }
    constructor () public {
        x = f(f(f(f(f(f(f(f(f(f(f(0)))));
}
<fim_middle>
