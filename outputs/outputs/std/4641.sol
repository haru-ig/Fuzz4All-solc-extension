pragma solidity ^0.8.0;
contract Mutator {
    uint256 constant INITIAL_X = 42;
    uint256 private x;

    function _modify(uint256 newValue) public {
        x = newValue;
    }
}

pragma solidity ^0.8.0;
contract Multiprecision {
    uint256 constant INITIAL_COUNT = 4;
    uint256[] public array;
    uint256 constant MAX_COUNT = INITIAL_COUNT * 2;

    constructor() public {
        require(MAX_COUNT >= INITIAL_COUNT);

        for (uint256 ix = 0; ix < INITIAL_COUNT; ix ++) {
            array[ix] = uint256(ix + 1);
        }
    }

    function modify() public {
        uint256 newValue = uint256(uint128(uint256(keccak256(abi.encode(x))))));

        array = array.map(uint256.min);
        array = array.map(uint256.max);

        for (uint i = 0; i < array.length; i++) {
            array[i] = (uint256(uint128(uint256(keccak256(abi.encode(x + 1)))))) - uint256(uint128(uint256(keccak256(abi.encode(newValue))))));
        }

        uint256[] memory ret = array;

        ret = array;

        assert(x == newValue);
        assert(ret == array);
    }
}
