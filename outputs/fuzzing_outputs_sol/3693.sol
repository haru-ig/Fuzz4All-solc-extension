pragma solidity ^0.8.0;
contract Example7 {
    uint[5] private numbers;
    function add10Plus(uint x, uint y, uint z) public returns (uint) {
        uint sum = x + y + z;


        numbers[2] = z;
        return sum;
    }
    function add11Plus(uint x, uint y) public returns (uint) {
        uint sum = x + y;
        x = 0;
        sum = s11(x, sum, y);
        return sum;
    }
    uint private s11(uint x, uint y, uint z) private pure returns (uint) {
        return 0 + x + y + z;
    }
    function add12Plus(uint x, uint y) public returns (uint) {
        uint sum = x + y;
        z = 0;
        sum = y12(sum, x, z);
        return sum;
    }
    uint private y12(uint x, uint y, uint z) private pure returns (uint) {
        return x + y + z;
    }
    function add13Plus(uint x) public returns (uint) {
        uint sum = x + x + x;
        sum = z13(x, sum, x, x, x, x);
        return sum;
    }
    uint private z13(uint x, uint y, uint x1, uint x2, uint x3, uint x4) private pure returns (uint) {
        return 0 + x + y + x1 + x2 + x3 + x4;
    }
}

pragma solidity ^0.8.0;
contract Example8 {
    uint x;
    function add14Plus(uint y) public returns (uint) {
        x = y + y;
        y = z14(x, y, y);
        z = 0;
        return y;
    }
    uint private z14(uint x, uint y, uint z) private pure returns (uint) {
        return x + y + z;
    }
}

pragma solidity ^0.8.0;
contract Example9 {
    function add15
