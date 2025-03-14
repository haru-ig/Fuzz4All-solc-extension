pragma solidity ^0.8.0;
contract five {
    function f(int) public pure returns(bool)
    {
        bool s0 = f(); bool s1 = f(256); bool s2 = f(0);
        return ((!(s0==s1))&&(s2==true));
    }
}
