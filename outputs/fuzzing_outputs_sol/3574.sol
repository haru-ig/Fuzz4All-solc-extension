pragma solidity ^0.8.0;
contract MutateSemantic4 {
    event Evt(uint a);
    function modifyFF(uint256 x, uint8 x0, uint256 y) public {
        uint256 z = (uint8(x));
        Z[x0] = uint224((uint224(uint115(y)) << 14) | uint14(uint320(z))));
        Z[x0 + 1] = uint224(uint320(y));
        emit Evt(uint224(uint320(z)));
    }
    mapping(uint256 => uint224) public Z;
}
