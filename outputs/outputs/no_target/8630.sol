pragma solidity ^0.8.0;
contract MyContract {
    constructor(uint256 x_) public {
        require(x_ > 0);
    }

    function mod(uint256 x_, uint256 y_) public pure returns (uint256) {
        return (x_ > 0? y_ + x_ / (10 ** y_ % 10 ** x_ % 10) : 0);
    }
}
contract Modulo2 {
    constructor(uint256 numerator) public {}
    function mod(uint256 x, uint256 y) public pure returns (uint256) {
        if (y > 0) {
            return ((x / y) - mod(((x / y) + mod((x / y), 2)), y)) * y;
        }
    }
}
contract Modulo3 {
    constructor(uint256 numerator) public {}
    function mod(uint256 x, uint256 y) public pure returns (uint256) {
        if (y > 0) {
            return ((x / y) - mod(((x / y) + mod((x / y), 3)), y)) * y;
        }
    }
}
contract NotEqual {
    constructor(uint256 x_) public {
        require(x_!= 0);
    }
}
contract NotLessThan {
    constructor(uint256 x_) public {
        require(x_ < 256);
    }
}
contract NotLessThanEq {
    constructor(uint256 x_) public {
        require(x_ <= 256);
    }
}
contract NotGreaterThan {
    constructor(uint256 x_) public {
        require(x_ > 0);
    }
}
contract NotGreaterThanEq {
    constructor(uint256 x_) public {
        require(x_ >= 0);
    }
}
contract LessThan {
    constructor(uint256 x_, uint256 a_) public {
        require(x_ < a_);
    }
}
contract LessThanEq {
    constructor(uint256 x_, uint256 a_) public {
        require(
