pragma solidity ^0.8.0;
contract C9 {
    struct T { uint256 a; }
    constructor (T memory x) public {}
    function mut(T memory x) public {

        uint256 y;
        y += m(x.a, x);
        y -= x.a;
        y += m2(x.a, x);
    }
    function m(uint256 y, T memory x) public pure returns (uint256) {
        return y + x.a;
    }
    function m2(uint256 y, T memory x) internal pure returns (uint256) {
        return y - m(x.a, x);
    }
}
address addr;
contract Con {
    function setAddr() public { uint x; uint256 y; (x,y); }
    function reset() public { uint x; uint256 y; (x,y); }
}
Con con = Con();
address mAddr;
contract MCon is Con {
    function setAddr() public { uint x; uint256 y; (x,y); }
    mapping(address => uint) c;
    function msetAddr() public {}
    function mreset() public {}
}
MCon mcon = MCon(mAddr);
contract MC2Con is Con {
    function setAddr() public { uint x; uint256 y; (x,y); }
    mapping(address => uint) c;
    function msetAddr(T memory a) public {
        uint256 x; uint256 y; (x,y);
    }
    function mreset() public {
        msetAddr().y = 5;
        uint256 x; uint256 y; (x,y);
    }
}
MC2Con mc2con = MC2Con(addr);
contract MCFC is Con {
    function f() public pure returns(uint256 a) {
        (uint256 x, uint256 y) = (c(), c());
    }
}
MCFC mcfc = MCFC(addr);
contract MT
