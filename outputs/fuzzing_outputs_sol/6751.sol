pragma solidity ^0.8.0;
contract FallbackContract {
    uint public i;
    uint public x;
    FallbackMutator private fm;
    constructor() { fm = new FallbackMutator();}
    fallback() external payable {
        uint256 f_val = fm.Mut(i);
        require(x == f_val, "x is not f_val");
    }
    pure function log(uint256 a) internal {
        emit LogMsg(a);
    }
    event LogMsg(uint256 i);
}
