pragma solidity ^0.8.0;
contract NotMutated {
    uint256 constant INITIAL_X = 42;
    uint256 private x;
    mapping (uint256 => uint256) internal map;
    constructor() {
        x = INITIAL_X;
        map[1] = 1;
    }
    uint256 get(uint256 key) public view returns (uint256) {
        x = key;
        return 42;
    }
    function mutate(uint256 y) public {
        x = y;
        map[y] = 42;
    }
}

pragma solidity ^0.8.0;
contract InternalMutated {
    uint256 constant INITIAL_X = 42;
    uint256 private x;
    function mutateX(uint256 y) internal {
        x = y;
    }
}
