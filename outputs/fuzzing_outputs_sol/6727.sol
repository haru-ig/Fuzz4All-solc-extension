pragma solidity ^0.8.0;
contract Mutator {
    function Mut(uint a) public {
        if (a > 10000000000) {
            a = uint(-1) + a;
        }
        emit MutLog(a);
    }
    event MutLog(uint a);
}
