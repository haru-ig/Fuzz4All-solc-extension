pragma solidity ^0.8.0;
contract BitwiseXORAndSHLXORAnd4 {
    uint256 a;
    uint256 a1;
    function modX() public {
        a1 = a / 2;
        a = a1 % 3;
    }
    function xor() public view returns (uint256) {
        return a ^ 3;
    }
    function shlxor() public view returns (uint256) {
        return 3 * a * a;
    }
}

pragma solidity ^0.8.0;
contract BitwiseXORAndSHLXORAnd5 {
    uint256 a;
    uint256 b;
    uint256 c;
    uint256 max;
    function maxThree() public view returns (uint256) {
        max = c;
        max = a;
        max = b;
    }
}
