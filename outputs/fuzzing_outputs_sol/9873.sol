pragma solidity ^0.8.0;
contract Old {
    function old(uint _a) pure public returns(uint) {
        (,_b) = (2*_a,_a);
        require(b > 0, "Old.old.1");
        return b;
    }
}
