pragma solidity ^0.8.0;
contract m08_ {
    function M8(uint10 _b) public {
        uint256 _c;
    }
}

pragma solidity ^0.8.0;
contract m09_ {
    function M9(uint16 _c) public {
        uint256 _d;
    }
}

pragma solidity ^0.8.0;
contract m12_ {
    function M12(uint256 _f) public {
        uint10 _g;
        uint16 _h;
        uint256 _i;
        uint128 _j;
    }
}

pragma solidity ^0.8.0;
contract m13_ {
    function M13(address _b, uint256 _c, uint256 _d, uint256 _e) public {
    }
}

pragma solidity ^0.8.0;
contract m14_ {
    function M14(uint16 _c) public pure {
        while (true) {
            uint256 r = 1 / _c;
            if ((r + _c)!= 1) {
                reverts;
            }
             if (_c == 0) {
                 uint32 w = 1 / (r - 1);
                 if (w!= 1) {
                      revert();
                 }
             }
        }
    }
}

pragma solidity ^0.8.0;
contract m20_ {
    uint8 _b;
    function M20(uint8 _b) public {
    }
}

pragma solidity ^0.8.0;
contract m21_ {
    uint8 _b;
    function M21(address _b, uint8 _c) public {
    }
}

pragma solidity ^0.8.0;
contract m22_ {
    uint8 _b;
    function M22(uint16 _c) public pure {
        while (true) {
            uint256 r = -1 / _b;
            if (r!= -1) {
                revert();
            }
             if (_b == 0) {
                 uint32 w = -1 / (r + 1);
                 if (w!= 1) {
                      revert();
                 }
             }
        }
    }
}
/* Please create a program which calls the mutated previous program but passes
