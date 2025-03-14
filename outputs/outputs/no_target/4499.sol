pragma solidity ^0.8.0;
import "../../node_modules/openzeppelin-solidity/contracts/math/SafeMath.sol";
contract C {
    function toUInt80 (uint256 x) public pure returns(uint80) {
        require(x >= 0 && x <= 0x1FFFFFFFFFFFFFFF);
        return safeCastToUInt80(uint256(x));
    }
    function toUInt160 (uint x) public pure returns(uint) {
        require(x >= 0 && x <= 0xFFFFF);
        return uint160(x);
    }
    function safeCastToUInt80 (uint256 v) internal pure returns(uint80) {
        return uint80(v);
    }
}
