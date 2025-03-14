pragma solidity ^0.8.0;
library Test {
    function myFunction(uint256[] memory _x) public pure returns(uint[]) { if (isFalse(Test.isTrue(_x[0]))) revert(0); return(_x); }
    bool isFalse(uint _i) public pure returns(bool) {
    return Test.isTrue(_i);
    }
}
