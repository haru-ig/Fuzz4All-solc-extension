pragma solidity ^0.8.0;
contract Mutate_0024 {
    constructor(uint256 a) public {
        if (a > 0) {
            require(a >= 0, "bad");
            require(a > 0, "bad");
        }
    }
}
contract Fail_0025 {
    constructor(uint256 a) public {
        if (a == 0) {
            if (a < 0) {
                require(a >= 0, "");
            }
            delete b;
        }
    }
    function f() public {
        uint256 b = 0;
        require(b >= 0, "", "bad");
        delete b;
    }
}
contract Require_0026 {
    constructor(uint tens, uint ones) public {
        require(tens + ones >= 0,"", "bad");
        require (tens + ones < 0,"", "bad");
        uint256 two_minus_ones = (tens + ones) + 1;
        uint256 result = uint256(two_minus_ones) / (tens + ones);
        uint256 res = uint256(two_minus_ones) / tens;
        require (result == res, ".result!=.original", "res!= (uint256(two_minus_ones) /")
    }
}
contract Fail_0029 {
    constructor(uint tens, uint ones) public {
        require (tens + ones >= 0,"", "");
        require (tens + ones < 0,"", "bad");
       require (tens + ones <= uint256(10**7), "","bad");
       uint256 two_minus_ones = uint256(tens + ones) + 1;
       uint256 result = uint256(two_minus_ones) / (tens + ones);
       uint256 res = uint256(two_minus_ones) / tens;
       require (result == res, ".result!=.original", "res!= (uint256(two_minus_ones) /")
    }
}
contract Error {
    function f() public pure returns (uint) {
        uint256[1] memory arr;
        uint256 a = arr[0];
        uint256 b = bytes2;
    }
}
