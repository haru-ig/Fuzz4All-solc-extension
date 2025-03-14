pragma solidity ^0.8.0;
contract FunctionalEquivalence_MutatedDynamicallySizedArrayAssignment_8{
    uint256 val;
    uint256[] public array;
    uint256 idx;
    mapping(uint256 => uint256) internal map;
    constructor() public {
        reset();
        val = 0;
        map[val] = 0;
        map[idx] = 0;
        map[1] = 0;
        idx = 0;
        val = 0;
    }
    function reset();
    function get() public view returns (uint256);
    function set(uint256[] memory arr,uint256 idx, uint256 val);
}

pragma solidity ^0.8.0;
contract FunctionalEquivalence_MutatedDynamicallySizedArrayAssignment_10{
    uint256 val;
    uint256[] public array;
    uint256 idx;
    mapping(uint256 => uint256) internal map;
    constructor() public {
        reset();
        val = 0;
        map[val] = 0;
        map[idx] = 0;
        map[1] = 0;
        idx = 0;
        val = 0;
    }
    function reset() internal
    {
        uint256 arrSize = 8;
        for (uint256 i = 0; i < arrSize; i += 1) {
            map[i] = 0;
        }
        array[0] = map[0];
        array[1] = map[0];
    }
    function get() public view returns(uint256);
    function set(uint256[] memory arr, uint256 idx, uint256 val);
}


pragma solidity
