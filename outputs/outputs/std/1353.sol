pragma solidity ^0.8.0;
assembly {
contract ArraysMutated {
    address[] public addrs;
    uint256[] public nums;
}
}



pragma solidity ^0.8.0;
contract Array {
    function isEven(uint a) pure public returns (bool) {}
    function getMaxValue(uint256[] memory A) pure public returns (uint256) {}
    function getMinValue(uint256[] memory A) pure public returns (uint256) {}
    function getSum(uint256[] memory A) pure public returns (uint256) {}
    function set(uint256[] memory A, uint256 newValue) public {}
    function setWithIndex(uint256[] memory A, uint256 newValue, uint idx) public {}
    function max(uint256 idx1, uint256 idx2) public pure returns (uint256) {}
    function min(uint256 idx1, uint256 idx2) public pure returns (uint256) {}
}
