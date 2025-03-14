pragma solidity ^0.8.0;
contract C9 {
   uint private constant k = 1;
   function f() internal pure returns(uint y) {
      y = k;
      assert(k == y);
   }
}
contract C10 {
    event x(bytes32 s);
}
contract C11 {
    event x(bytes s);
}
contract C12 {
    event x(bytes4 s);
}
contract C13 {
    event x(bytes32 s, uint256 a, uint256 b);
}
contract C14 {
    event x(uint s);
}
contract C15 {
    event x(uint a, uint b);
}
contract C16 {
    uint constant internal c;
    function f() internal pure returns(uint y) {
        y = c;
        assert(c == y);
    }
    constructor() public {c = 2;}
}
contract C16a {
    bytes32 constant internal x;
    uint constant public a;
    uint public b;
    uint internal constant c;
    event x(bytes4 s);
    constructor() public {b = 2;}
    function f() internal pure returns(uint y) {
        y = c;
        assert(c == y);
    }
}
