pragma solidity ^0.8.0;
contract third8 {
    uint256 private a = 10;
}
contract third8 {
    function getA() public pure returns (uint256) {
        return a;
    }
    function setA(uint256 _a) public {
        a = _a;
    }
}
