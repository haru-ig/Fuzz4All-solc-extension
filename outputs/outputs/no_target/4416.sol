pragma solidity ^0.8.0;
contract L {
    modifier k() { assert (x!= 0); _; }
    function f() public k {}
}

pragma solidity ^0.8.0;
contract L {
address x;
function f() public k(uint y) { assert (x == y); }
    function g() public k(uint y) { assert (x == y); }
    function h(uint y) public k(uint z) { assert (x!= y); }
    function i() public k(uint z) { assert (x!= y); }
    function assert(uint y) public k() {}
}

pragma solidity ^0.8.0;
contract L {
    function f() public
    i(uint0 y)
    {
        assert (uint256(y) <= 1);
    }
}

pragma solidity ^0.8.0;
contract L {
address x; uint z=1; uint u = 0x4177E87; uint0 y;
function f() public { x = uint256(uint256(y) * uint256(z)) * uint256(u); }
constructor(uint0 y_) public { assert (x == y); }
}
