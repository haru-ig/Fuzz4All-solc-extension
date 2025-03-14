pragma solidity ^0.8.0;
contract Test
{
    uint constant int_max = 2**36 - 1;
    uint x = 2**36 - 1;
    function test() public {
        x /= 37;
        x = 2**36 - 1;
        x /= 37 + 1;
        x = 6;
    }
    modifier only() {
        x = int_max;
        x -= 1;
        x /= 37;
        x -= 17;
        x /= 37;
        x = 5;
        x -= 8;
        x /= 38;
        x = 9;
        _;
    }
}

pragma solidity ^0.8.15;
contract Test
{
    function test() public {
        require(int_max / x / z < 1091989696, "Failure");
        require(int_max / x < z / 8, "Faile");
    }
    function fail() only {
        x = int_max; x -= 1; x /= 37; x -= 17; x /= 37; x = 5; x -= 8; x /= 38; x = 9;
    }
}
contract Test
{
    function test() public {
        x = int_max - 1;
        x /= 37;
        x -= 17;
        x /= 37;
        x = 2;
        x *= int_max + 1;
        x -= 1;
        x *= 37;
        x -= 1;
        x *= 37;
        x /= 37;
        x -= 17;
        x *= 37;
        x -= 19;
        x *= 37;
        x -= 12;
        x *= 37;
        x -= 6;
        x = int_max - 1;
        x /= 37;
        x -= 17;
        x /= 37;
        x = 2;
        x *=  int_max + 1;
        x -= 1;
        x *= 37;
        x -= 1;
        x *= 37;
        x /= 37;
        x -= 17;
        x *= 37;
        x -= 19;
        x *= 37;
        x -= 12;
        x *= 37;
    }
}
