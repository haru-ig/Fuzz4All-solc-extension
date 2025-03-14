pragma solidity ^0.8.0;
contract B {
    uint256 public _x;
    constructor() {
    }
    function add(uint256 x) internal view {
        _x = _x + 2 * x;
    }
    function useStorage() external view {
        uint256 memoryStorage;
        assembly {
            memoryStorage := mload(0x40)
        }
        emit S(uint256(memoryStorage));
    }
    function fallback() public pure {
    }
    event S(uint256 a);
}
contract Ab {
    uint256 public _y;
    constructor() {
    }
    function add(uint256 x) internal {
        _y = _y + 2 * x;
    }
    function addStorage(uint256 x) external {
        _y = _y + 2 * x;
    }
    function useStorage() external view {
        uint256 memoryStorage;
        assembly {
            memoryStorage := mload(0x40)
        }
        emit S(uint256(memoryStorage));
    }
    event S(uint256 a);
}

pragma solidity ^0.8.0;
contract C {
    function use() public payable {}
    function fallback() public {}
}

pragma solidity ^0.8.0;
contract D is Ab, B {
    function use() public override payable {
        uint256 a = add(2 * 1);
        addStorage(12);
    }
    function fallback() external payable {
        uint256 a = add(2 * 2);
        addStorage(3);
    }
}
contract E {
    uint256 public i;
    constructor() {
    }
    function fallback() public pure returns(uint256) {
        return 88;
    }
    function f() public pure {
        (i = 99);
    }
    function test1() public {
