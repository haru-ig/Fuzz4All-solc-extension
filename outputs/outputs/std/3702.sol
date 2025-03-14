pragma solidity ^0.8.0;
contract MyContract {
    uint256 public value;
    function myfunc() public {
        value = 0;
    }
    function subtract() public {
        value -= 1;
    }
}
pragma solidity ^0.8.0;contract MyContract {
    uint256 public value;
    struct Point {
        uint256 x;
        uint256 y;
        function subtract(Point memory p) public pure returns (uint256) {
            require(p.x > 0);
            return x - p.x;
        }
        function plus(Point memory p) public pure returns (uint256) {
            require(p.x > 0);
            return x + p.x;
        }
        function negate() public {
            require(x > 0);
            x = x;
        }
    }
    function myfunc() public {
        _func();
    }
    function _func() internal {}
    function print_point(Point memory p) public returns (uint256) {
        return p.x * p.y;
    }
}

pragma solidity ^0.8.0;contract Memory {
    uint256 internal[4] public nums;
    function getValue(uint256 idx) internal view returns (uint256) {
        return nums[idx];
    }
    function getValue(uint256 idx0, uint256 idx1) internal view returns (uint256) {
        uint256 out = getValue(idx0);
        uint256 t = getValue(idx1);
        return out * t;
    }
    function getValue(uint256 idx0, uint256 idx1, uint256 idx2) internal view returns (uint256) {
        uint256 out = getValue(idx0, idx1);
        uint256 t = getValue(idx2);
        return out * t;
    }
    function getZeroSum() internal view returns (uint256) {
        uint256 sum = 0;
        for (uint256 idx = 0; idx < nums.length; idx++) {
            sum += getValue(idx);
        }
        return sum;
    }
}
/* Please create a small program which uses the contract Math.
