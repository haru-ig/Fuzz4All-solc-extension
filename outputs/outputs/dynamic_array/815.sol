pragma solidity ^0.8.0;
library MyLib2{
    constructor(uint256[] memory _arr) public {}

    function toUintArray(uint x) pure public returns(uint256[]) { return []; }
    function zeroArr(uint len) pure public returns(uint256[4][]) { return []; }

    function isTrue(bool _x) pure public returns(uint) { return 1; }
}
