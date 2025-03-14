pragma solidity ^0.8.0;
contract Semantics {
    function balance() external view returns(uint) {
        return 0;
    }
}
contract UnchangedMutated {
    function _unchanged() private {
    }
    uint public _previousValue;
    function balance() public view returns (uint) {
        _previousValue + _previousValue + 1;
    }
}
