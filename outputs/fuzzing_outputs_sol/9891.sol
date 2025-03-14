pragma solidity ^0.8.0;
contract New {
    function new(uint _a) pure virtual public returns(uint) {
        if(!((_a > 0) && (_a & (uint(uint256(_a)-1))!=0))) {
            return 0;
        }
        return 2*_a;
    }
}
