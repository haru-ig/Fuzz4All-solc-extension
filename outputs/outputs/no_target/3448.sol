pragma solidity ^0.8.0;
contract m05 {
    function M5(uint256 _c) public {
        unchecked {
            _c %= 2;
        }
        require(_c % 2 == 0, "Test failing: _c should be divisible by 2");
    }
}

pragma solidity ^0.8.0;
contract m06 {
    function M6(uint256 _c) public {
        if ((_c < 42 && _c > -1)) {
            bool cond;
        }
    }
}

contract m06 {
    function M6(uint256 _c) public {
        bytes memory bytes_;
        bytes memory _bytes;
        bytes = new bytes(_c * 2);
        _bytes = new bytes(bytes_);
    }
}
contract m07 {
    function M7(uint256 _c) public {
        uint _c;
        uint256 u;
        uint256 v;
        require(_c!= 0, "Test failing: _c should not be zero");
    }
}
contract m10 {
    function M10(uint256 _c) public {
        uint256 _c;
        uint256 u;
        uint256 v;
        require(_c < 42 && _c >= -1, "Test failing: _c should be between -1 and +1");
    }
}
contract m11 {
    function M11(uint256 _c) public {
        uint _c;
        uint256 u;
        uint256 v;
        require(_c < 42 && _c >= -1, "Test failing: _c should be between -1 and +1");
    }
}
contract m12 {
    function M12(uint8 _c) public {
        require(checkA(_c < 10 && _c > -1), "Test failing: _c should be between -1 and +10");
    }
}
contract m13 {
    function M13(uint8 _c) public {
        require(checkB(uint8(uint256(_c) < uint256(10)))) {
            "Test failing: _c should be between -1 and +10");
        }
    }
}
contract m14 {
    function M14(uint160 _c) public {
        require(checkA(_c < 10 && _c >= -100), "Test failing: _c should
