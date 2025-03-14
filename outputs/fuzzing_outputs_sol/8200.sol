pragma solidity ^0.8.0;
contract SemanticSimilar8{
  uint u1;
  uint u2;
  uint u3;
  bool b1;
  bool b2;
  bool b3;
  uint p;
  uint x = 13;
  function h() public returns (uint) {b1 = true; b3 = true; return 0;}
constructor() public {u1 = 0; u2 = 0; u3 = 0}
  function g() public returns (uint) {b1 = true; p = u1+u2; return p;}
  function k() public returns (uint) {b1 = false; if(b1) u1=x; if(b2) u2=x; b1 = true; b2 = false; return u1+u2;}
  function f() public returns (uint) {b1 = false; if(b1) u1=x; if(b2) u2=x; b1 = false; if(b1) b3=true; return u1+u3;}
 contract SemanticSimilar9{
 uint x;
    constructor() public {x = 15;}
    function g() public returns (uint) {x += 1000;}
    function h() public returns (uint) {x = 1500;}
    function i() public returns (uint) {x = 0; return x;}
    function j() public returns (uint) {x += 1;}
 }
contract SemanticSimilar10 is SemanticSimilar10.SemanticSimilar9{
    bool m1;
    bool m2;
    constructor(address sender, address recipient, uint amount) public {m2=true;}
    function g() public returns (uint) {m2=true; m1 = false; m2=false; return 0;}
    function f() public returns (uint) {m1 = true; m2 = false; return 0;}
    receive() external payable { emit RecievedPayableMessage(); }
    event RecievedPayableMessage();
 }

pragma solidity ^0.8.0;
contract SemanticSimilar11 {
  bool a1;
  bool a2;
  bool a3;
  uint256 t;
  constructor() public {}
  function h() public returns (uint) {a3 = false; a2 = true; a1 = false; a2 = true; return 4;}
  function g() public returns (uint) {a1 = false; a3 = false; a1 = false; return 0;}
    receive () public {t = 0;}
    function p() public returns (uint) {a1 = true; a3 = false; a1 = false; t += 1; return t;}
}
