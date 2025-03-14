pragma solidity ^0.8.0;
contract B is A{
    uint256 public k;

    function f() public{
        k = 1;
        k = 2;
    }
}



pragma solidity >=0.5.2 <0.7.x;
abstract contract A {
    function f(uint a) public {
        (uint b) = (a, 55);
        (uint160) c = 1;
        address d = c;
        uint e = (uint)(c + 42);
        b = (uint256(0xFFFFFF));
        c = (uint160(0xFFFFFF));
        uint160 f = 1;
        uint256 g = (uint256(f)) + 6;
        (d,e,f,g) = (c,d,c+g,42);
    }
}


pragma solidity >=0.5.2 <0.7.x;
contract B is A{
    uint k;

    function f() public {
        k = 1;
        k = 2;
    }
}


pragma solidity >=0.5.2 <0.7.x;
contract L {
    uint256 public m;
    uint128 public n;

    function f(uint256 x) public {
        m = x;
        n = x;
    }
}



pragma solidity >=0.5.2 <0.7.x;
contract S {
    uint256 public m;
    uint128 public n;

    function f(uint256 x) public {
        m = x;
        n = x;
    }
}



pragma solidity >=0.5.2 <0.7.x;
contract W {
    uint256 public m;
    uint128 public n;

    function f() public {
        uint128 x = 1;
        m = (uint256)x;
        n = (uint256)9999;
    }
}
