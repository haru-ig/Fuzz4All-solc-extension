pragma solidity ^0.8.0;
contract Convert {
    function sign(uint x) public pure returns (bool) {
        return (x > type(uint256).max / 2 + 1);
    }
    function toUnsigned(bytes memory x) public pure returns (uint) {
        require(bytes(x).length > 0, "The input array cannot have length 0");
        return bytes(x)[0];
    }
    function toSigned(bytes memory x) public pure returns (int) {
        require(bytes(x).length > 0, "The input array cannot have length 0");
        require(bytes(x)[0] > 255, "The byte must be between 0 and 255");
        return bytes(x)[0].signed();
    }
}
