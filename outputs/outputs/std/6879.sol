pragma solidity ^0.8.0;
contract SimpleMath {
}
contract Math {
    uint8 constant BASE_DIVISION = 8;
    uint256 div(uint256 a, uint256 b) public pure returns (uint256 r) {
        r = (b == 0)? (0) : (a / b);
        require(r <= base_div(a, b));
    }
    function base_div(uint256 a, uint256 b) private pure returns (uint256 quotient) {
        quotient = (a >= b)? (uint256(1)) * ((a / b)) * ((b / b)) : 0;
    }
}
