pragma solidity ^0.8.0;
contract Test94F4 {
     function h() public pure { return h1();}
}
function h1() public pure { return h2();}
function h2() public pure { return uint256(bool1() && bool2() && bool3() && bool4() && bool5()); }
function bool1() public pure { return bools(0);}
function bool2() public pure { return bools(bool2()); }
function bool3() public pure { return bools||(uint256(bool1()) >= 200);}
function bool4() public pure { (bool6(uint256(bool2()) >= uint256(bool1()))); }
function bool5() public pure { return uint64(bool8() && uint64(bool1() < 0x0000000000000001)); }
function bool6(bool a) public pure { return uint64(a && bool2()); }
function bool8() public pure { bool a; bool b; a; }
