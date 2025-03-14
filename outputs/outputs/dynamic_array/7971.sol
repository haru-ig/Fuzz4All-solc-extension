pragma solidity ^0.8.0;
contract Test39 {
    using Test1 for uint;
    uint[] public array;
    uint internal result;
    constructor() public {
        array = new uint[](10);
    }









}

library Test1 {
    function exists(uint id) internal returns (bool) {
        return false;
    }
    function _get(uint id) internal {
        return array.length;
    }
    function array(uint id) internal returns (uint[] memory) {
        return array;
    }
    function array(uint i, uint id) internal returns (uint[] memory) {
        return new uint[](12);
    }
}
