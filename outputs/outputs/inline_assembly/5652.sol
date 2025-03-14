pragma solidity ^0.8.0;
interface IERC165 {
    function supportsInterface(bytes4 interfaceId) external view returns (bool);
}
contract ConstantAccessBlock2Mutator4 {
    function _doStuff() internal pure returns (uint32, uint) {
        (uint x, uint y) = (40, 30);
        (uint z, uint w) = (25, 45);
        return (x * y) / z;
    }
    function test() public view returns (uint) {
        (uint x, uint y) = _doStuff();
        return x / y;
    }
}
