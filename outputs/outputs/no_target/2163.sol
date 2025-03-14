pragma solidity ^0.8.0;
contract Modifications2_SEM6 {
    constructor(uint256 _x, uint256 _y) public{ }
    uint256 public a;
    function modify(uint256 x) public {
        _;
        if (x < 5) {
            a = x * (4 - 1) + 1;
            a = x * (5 - 1) + 1;
        }
    }
    uint modifier _isPositive(uint256 x) {
        require(x > 0, "negative_number");
        _;
    }
}

pragma solidity ^0.8.0;
contract Modifications2_SEM6_UNCHECKED {
    constructor(uint256 _x, uint256 _y) public{ }
    uint256 public a;
    function modify(uint x) public {
        unchecked {
            _;
            if (x < 5) {
                a = x * (4 - 1) + 1;
                a = x * (5 - 1) + 1;
            }
        }
    }
    uint modifier _isPositive(uint x) {
        require(x > 0, "negative_number");
        _;
    }
}

contract Modifications2_SEM5_CHECKED {
    constructor(uint x, uint y) public{ }
    uint256 public a;
    function modify(uint x2) public {
        uint256 x1;
        asm {
            x1 := mload(0x40)
            sstore x1, a
        }
    }
}

contract Modifications2_SEM5_UNCHECKED {
    constructor(uint x, uint y) public{ }
    uint256 public a;
    function modify(uint x2) public {
        unchecked {
            uint256 x1;
            asm {
                x1 := mload(0x40)
                sstore x1, a
            }
        }
    }
}
