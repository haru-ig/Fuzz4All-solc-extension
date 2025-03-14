pragma solidity ^0.8.0;
contract Mutate_0024 {
    uint256 a;
    uint256 b;
    constructor(uint256 a_) public
    {
        require(a < 1000,"bad");
        a = a_;
        b = a + a;
        require(b <= b + 1 && a <= a+1, "bad");
    }
    function g() view public returns (bool bl,uint256,uint256)
    {
        bool iszero = a == 0;
        bool is_less_than_zero = a < 0;
        bool is_greater_than_zero = a > 0;
        uint256 c = a+a;
        return(iszero,b,c);
    }
}
contract Fail_0025 {
    uint256 a;
    uint256 b;
    constructor(uint256 a_) public
    {
        a = a_;
        b = a + a;
        bool b1;
        bool b2;
        require(b <= b + 1 && b >= b + 1, "bad");
    }
    function g() view public returns (bool bl,uint256,uint256)
    {
        bool iszero = a == 0;
        bool is_less_than_zero = a < 0;
        bool is_greater_than_zero = a > 0;
        uint256 c = a+a;
        b1 = b == b + 1;
        b2 = a == a + 1;
        return(iszero,b,c);
    }
}

pragma solidity ^0.8.0;
contract Mutate_0026 {
    uint256 a;
    uint256 b;
    constructor(uint256 a_) public {
        require(a < 1000,"bad");
        a = a_;
        bool b1;
        bool b2;
        a = b + b;
        bool a0 = a == 0;
        b1 = a == 1;
        a = a + b + a;
        b2 = a == b + b;
        bool a1 = a == 1;
        b1 = a == b + 0;
        a1 = a1 && a0;
        a1 = a1 || a0;
        require(a1, "bad");
    }
    function g() view public
