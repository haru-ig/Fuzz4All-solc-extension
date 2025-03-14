pragma solidity ^0.8.0;
contract FunctionalEquivalence_MutatedDynamicallySizedArrayAssignment{
    uint256[] public array;
    uint256 val;
    constructor() public {
        array = new uint256[](5);
        uint256 t = set(array, 2, val);
        require(t == 0, "Test failed.");
        val = 0;
        t = set(array, 1, val);
        require(t == 2, "Test failed.");
    }
    function set(uint256[] memory a, uint256 idx, uint256 v) internal returns(uint256) {
        uint256 o = a[idx];
        a[idx] = v;
        return o;
    }
    function get(uint256[] memory a, uint256 idx) internal returns(uint256 t) {
        t = a[idx];
    }
    function modify(uint256[] memory a, uint256 idx) internal {

        set(a, idx, get(a, idx), get(a, idx) + (idx * 2));
    }
    function check() public {
        for(uint256 i = 0; i <= get(array, 1)-get(array, 0) || i <= get(array, 4)-get(array, 2); i++){
            require(get(array, i) == 2 * (get(array, 0) - i) + get(array, 1) - i);
