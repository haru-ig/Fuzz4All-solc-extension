pragma solidity ^0.8.0;
contract SemanticMutation20 {
    uint private constant value = 0x05;
    string m = new string(1);
    function f() public pure {
        return m;
    }
}
contract SemanticMutation21
{
    uint private constant value = 5;
    function a() public pure {
        uint = value;
    }
}
contract SemanticMutation22
{
    uint private constant value = 165840000;
    function a() public pure {
        uint x = value;
        uint16 y = uint16(x);
    }
}
contract SemanticMutation23
{
    uint public a;
    constructor (uint a_) public { a = a_; }
    function b() public pure { do{a = 4; }while(false);}
    function c() public pure returns (uint) { do {return 4;}while(false); }
}
contract SemanticMutation24
{
    uint public a;
    uint public b;
    constructor (uint a_) public { a = a_; }
    function c1() public pure { do {a = 4; b = value; }while(false); }
    function c2() public pure { do {a = 4; b = value; }while(false); }
    function c3() public pure { do {a = 4; b = value; }while(false); }
    function c4() public pure { do {a = 4; b = value; uint256 z = value; }while(false);}
}
contract SemanticMutation25 {
    uint public a;
    uint256 public b;
    uint private constant value = 165840000;
    constructor (uint a_, uint256 b_) public {
        a = a_;
        b = b_;
    }
    function b2() public pure { do {a = 4; b = 42;    } while(false);}
    function c1() public pure { do {a = 4; b = value + 1; } while(false);}
    function c2() public pure { do {a =
