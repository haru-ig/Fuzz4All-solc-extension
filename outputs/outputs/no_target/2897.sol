pragma solidity ^0.8.0;
contract first{
    uint a = -5;
    uint b = -1;
    function check(bool predicate) internal pure {
        if(a < 5){
            assert(true);
        }
    }
    function func1() public pure {
        check(a < 24);
    }
}
