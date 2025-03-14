pragma solidity ^0.8.0;
contract m04_11 {
    function M4(uint256 _c) public {
        uint256 x;
        x = (uint160(-1))/uint160(int256(_c));
        require(_c % 2 == 1 && x % 2 == 0 || _c % 2 == 0 && x == 0, "Test failing: _c should be divisible by 2");
    }
}

pragma solidity ^0.8.0;
contract m04_12 {
    function M4(uint256 _c) public {
        selfdestruct(msg.sender);
    }
}

pragma solidity ^0.8.0;
contract m04_13 {
    function M4(uint256 _c) public {
        _update();
        _revert();
    }

    function _revert() public {
        selfdestruct(msg.sender);
    }

    function _update() public {
        msg.value = 10;
    }
}

contract m04_14 {
    function M4(uint256 _c) public {
        uint256 y;
        y = uint160(int256(-1));
    }
}
contract m04_16_13 {
    function M4(uint256 _c) public {
        uint256 x;
        x = (uint160(3))/(uint160(2));
    }
}
contract m04_16_14 {
    function M4(uint256 _c) public {
        int256 i = 3;
        uint256 x;
        x = (uint160(3))/uint160(i);
    }
}
