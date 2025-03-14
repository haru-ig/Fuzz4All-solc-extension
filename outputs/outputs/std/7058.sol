pragma solidity ^0.8.0;
contract BitwiseXORAndSHLXORAnd3 {
    uint256 a;
    function setX() public {
        a = a + 3;
        a = 4;

        a = a;
        a = a;
    }
    function xor() public view returns (uint256) {
        return a ^ a;
    }
    function shlxor() public view returns (uint256) {
        return a * a * a * a * a;
    }
}

pragma solidity ^0.8.0;
contract BitwiseXORAndSHLXORAnd3 {
    uint256 a;
    uint256 x;
    uint256 x6;
    uint256 x7;
    uint256 s1;
    uint256 s2;
    uint256 s3;
    uint256 s;
    uint256 result;
    function setX() public {
        a = 2;
        x = 5;
        x6 = 6;
        s1 = 3;
        s2 = 5;
        s3 = 4;
        s = s1 + s2 + s3;
        x7 = x - x;
        result = x7 + s;
    }
    function xor() public view returns (uint256) {
        return a ^ a ^ a ^ x6 ^ a ^ x5 ^ s;
    }
    function shlxor() public view returns (uint256) {
        return a ^ s ^ s ^ s1 ^ s2 ^ s3 ^ s;
    }
}
