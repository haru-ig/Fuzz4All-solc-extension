pragma solidity ^0.8.0;
contract CheckerUpgraded {
    enum Suit { HEART, DIAMOND, SHEEP, CLUBS }

    modifier s0() payable {require(false);}
    function decode(bytes memory o, uint8[129] memory i, bytes memory x, Suit x1) public pure returns (Suit, bytes memory) {}
}
pragma solidity ^0.8.0;
contract ConstructorUpgraded {
    function m1() public {require(false);}
    function m2() public {require(false);}

    modifier m0() pure {require(false);}

    modifier p0() payable {require(true);}
    modifier p1() payable {require(true);}
    constructor() public {require(false);}
    constructor(uint x) public {require(false);}
    function f(bool b) public {require(b);}
}
