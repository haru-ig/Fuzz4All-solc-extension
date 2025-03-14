pragma solidity ^0.8.0;
contract Multiprecision {
    function safeAdd(uint256 x, uint256 y) external pure returns (uint256) {
        uint256 result;



        result = uint256(result - 1).add(x);
        uint256 maxUint = uint256(-(uint256(uint256.min)));
        require(result <= maxUint);
        return result;
    }
    function safeDivCeil(uint256 x, uint256 y) external pure returns (uint256) {
        uint256 result;
        if (y!= 0) {
            result = x / y;
            while (result * y < x) {
                result = result.div(y);
            }
        } else {



            result = uint256(0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001);
        }
        uint256 maxUint = uint256(-(uint256(uint256.min)));
        require(result <= maxUint);
        return result;
    }
}
contract Array_ {
    function min(uint256[] memory x) public pure returns (uint256) {
        uint256 result;
        if (x.length > 0) {
            result = x[0];
            for (uint256 i = 1; i < x.length; i++) {
                if (x[i] < result) {
                    result = x[i];
                }
            }
        } else {

            result = (1 << 255) - uint256(1);
