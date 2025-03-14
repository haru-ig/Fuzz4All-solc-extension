pragma solidity ^0.8.0;
library Unchecked  {
    function add(uint256 a) public pure returns (uint256) {
        return a + 1;
    }
}
contract B  {
    uint256 [8] x_ = [1, 2, 3, 4, 5, 6, 7, 8];
    uint256 [17] y_ = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17];
    uint256 public z_;
    function f() public pure {
        unchecked {
            z_ += 1;
        }
    }
    function f2(uint256 [17] memory m) public pure returns (uint256) {
        unchecked {
            z_ += 1;
        }
        unchecked {
            if (m[3] == 1) return 2;
        }
        unchecked {
            return m[4] + 3;
        }
    }
    function f3(uint256 memory m) public returns (uint) {
        z_ = m + 3;
    }
    function f4(bytes memory _b) public pure {
        unchecked {
            z_ += 1;
        }
    }
    function f5(bytes memory _b) public pure returns(uint) {
        unchecked {
            z_ += 1;
        }
    }
    function f6(uint256 _x) public pure {
        unchecked {
            if (_x == 1) return;
        }
    }
    function f7(uint _x) public pure returns (uint) {
        unchecked {
            return _x + 1;
        }
    }
    function f8(uint_128 _) public pure returns (uint) {
        unchecked {
            return _;
        }
    }
    function f9(uint160) public pure returns(uint) {
        unchecked {
            return 2;
        }
    }
    function f10(bytes memory _) public pure returns(uint) {
        unchecked {
            return _;
        }
    }
    function f11(address) public pure returns(uint) {
        unchecked {
            return 2;
        }
    }
    function f12(string memory ) public pure returns(uint) {
        unchecked {
            return 2;
        }
    }
    function f13(bool) public pure returns(uint) {
        unchecked {
            return 3;
        }
    }
    function f14(address _a) public pure returns(uint) {
        unchecked {
            return 2;
        }
    }
    function f15(string memory) public pure returns(uint) {
        unchecked {
            return 2;
        }
    }
    function f
