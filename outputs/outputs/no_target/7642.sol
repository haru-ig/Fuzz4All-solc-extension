pragma solidity ^0.8.0;
contract L {
    function l() public pure returns (uint) {
        return 2;
    }
}
pragma solidity ^0.8.0;

pragma solidity ^0.8.0;
contract N {
    function f() public pure returns (uint) {
        if (true)
            return 1;
        else
            return 2;
    }
    function w() public pure returns (uint) {
        return 1;
    }
}

pragma solidity ^0.8.0;
contract M {
    function isEven(uint256 x) public notZero(x) returns (bool) {
        if (x == 0) return false;
        return x % 2 == 0;
    }
    function notZero(uint256 x) public pure returns (bool) {
        return x!= 0;
    }
}
