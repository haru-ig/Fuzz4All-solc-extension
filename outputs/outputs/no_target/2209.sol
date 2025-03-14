pragma solidity ^0.8.0;
contract Modifications2_SEM6 {
    function f(uint256 _x, uint256 _y) public {
        uint256 y2 = uint(4 / 2) + uint(8 / 3);
        uint256 x2;
        x2 = ( (3 * _x) + (2 * _y2) + 5) * 2 + _y;
    }
}

pragma solidity ^0.8.0;
contract Modifications2_SEM1 {
    function f(uint256 _x, uint256 x) public {
        uint256 sum = 5;
        sum = sum * 3;
        sum = uint(sum + 3) + uint(x);
        sum = uint(3 * sum + 6);
        sum = uint(sum + x);
        sum = x + 5 + sum;
    }
}
