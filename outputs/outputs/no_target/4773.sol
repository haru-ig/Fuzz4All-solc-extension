pragma solidity ^0.8.0;
contract A {
uint8 internal a;
uint256 internal b;
constructor() public {
    a = 1;
    b = 2;
}
}
contract B is A {
uint8 internal a;
uint256 internal b;
constructor() public  {
    a = 1;
    b = 2;
}
}

pragma solidity ^0.8.0;
contract No_semantics {
uint8 internal a;
uint256 internal b;
constructor() public {
     a = 1;
     b = 2;
}
}
contract Test {
function test1(uint8 x, uint256 y) public {
    if (x > 6) { revert ("Overflow"); }
    if (y < -6) { revert ("Underflow"); }
    if (y > 4294967295) { revert ("Overflow"); }
}

function test2(uint8 x, uint256 y) public {
    require(x > 6);
    require(y < -6);
    require(y < 4294967295);

}

function test3(uint256 x, uint256 y) public {
     uint8 x8 = uint8(x);

    require(x8 > uint8(0));
    require(x8 < 128);

    if (y < -1048576) { revert(""); }
    if (x8 < 250) { revert(""); }
    if (x > 10000000000*10**4) { revert(""); }
    if (y > 10000000000*10**4) { revert(""); }

}
}
contract Test_mod {
struct A { uint8 a; uint256 b; }
function test(A v) public {
    if (v.a < 6 && v.b < -6) { revert("Overflow"); }
    if (v.b < 0) { revert("Underflow"); }
    if (v.a > 4294967295) { revert("Overflow"); }
}
}
