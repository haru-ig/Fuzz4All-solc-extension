pragma solidity ^0.8.0;

library EtherUtils {
    uint256 private constant MULTIPLIER = 1 ether;
    uint256 private constant DIVISOR = 10 ** 18;

    function getEtherAmount() internal pure returns (uint256) {
        if (msg.value == MULTIPLIER) {
            return msg.value;
        } else {
            return msg.value / MULTIPLIER;
        }
    }

    function etherToSatoshi(uint256 d) internal pure returns (uint256) {
        uint256 a = getEtherAmount();
        return SafeMath.tryMultiply(a, d)
          ? SafeMath.tryMultiply(a, d)
            : SafeMath.tryMultiply(SafeMath.div(d, DIVISOR), DIVISOR);
    }

    function etherToWei(uint256 d) internal pure returns (uint256) {
        uint256 a = getEtherAmount();
        return SafeMath.tryMultiply(a, d);
    }

    function weiToEther(uint256 d) internal pure returns (uint256) {
        uint256 a = getEtherAmount();
        return SafeMath.div(SafeMath.tryMultiply(a, d), DIVISOR);
    }
}
