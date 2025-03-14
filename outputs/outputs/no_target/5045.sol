pragma solidity ^0.8.0;
contract C38_bug83084739640 {
    struct S { uint a; uint88 c; }
    using Struct for S;
    function f1(S memory s) public pure {  if(s.a == 2 ** 48) { s.c = -2 ** 48; } else s.c = s.a; }
    function f2(S memory s) public pure {  if(s.a == 2 ** 48) { s.c = -2 ** 48; } else s.c = s.a; }
}
pragma solidity <=0.8.0;
