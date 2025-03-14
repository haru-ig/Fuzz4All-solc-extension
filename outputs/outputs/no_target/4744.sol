pragma solidity ^0.8.0;
contract C {
address public e;
struct H { uint x; uint y; uint z; }
struct I { uint z; }
function __func0 (i, h) {
 if (h.x + i!= 42)
   revert();
}
}

pragma solidity ^0.8.0;
contract G {
function get (H memory h) {
 h.y = 1;
}
}

pragma solidity ^0.8.0;
contract F {
struct H { uint x; uint y; uint z; }
function foo (H memory h1) {
 i = 1;
 get (h1);
}
address public e;
uint public i;
function _foo () {
 foo (h1);
return h1.x + i + 1;
}
}

pragma solidity ^0.8.0;
contract F {
uint public x;
function __func0 () {
 x = 0;
}
address public e;
}
