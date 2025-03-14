pragma solidity ^0.8.0;
contract modifierB2{
    function f() public pure {




        require(true);
    }
}


contract Modifiers{
    modifier m1(string memory s) {
        if(address(bytes(s))==0) revert();
        return true;
    }
    modifier m2(address a,uint32 b,uint32 x) {
        if(uint(a)==x) revert();
        return true;
    }
    function f(string memory s,uint16 a,uint256 b) public { f(); }
    function f(address a,uint16 a) public { f(); }
}
