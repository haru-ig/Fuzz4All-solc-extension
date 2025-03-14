pragma solidity ^0.8.0;
contract BitwiseXORAndSHLXORAnd3 {
    uint256[5] public x;
    function setX() public {
        x[0] = x[0] + 3;
    }
    function xor() public view returns (uint, uint, uint) {
        return (x[2]^x[0], x[2]^x[3], x[3]^x[1]);
    }
    function shlxor() public view returns (uint, uint, uint) {
        return (x[0]^x[5]*x[0], x[0]^x[4]*x[0], x[0]^x[3]*x[0]);
    }
}

pragma solidity ^0.8.0;
contract BitwiseXORAndSHLXORAnd3 {
    uint256[5] storage x;
    function setX() public {
        x[0] = x[0] + 3;
    }
    function xor() public view returns (uint, uint, uint) {
        return (x[2]^x[0], x[2]^x[3], x[3]^x[1]);
    }
    function shlxor() public view returns (uint, uint, uint) {
        return (x[0]^x[5]*x[0], x[0]^x[4]*x[0], x[0]^x[3]*x[0]);
    }
}
