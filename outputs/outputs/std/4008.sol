pragma solidity ^0.8.0;
import "https://raw.githubusercontent.com/OpenZeppelin/openzeppelin-contracts/master/contracts/utils/math/Math.sol";
import "https://raw.githubusercontent.com/OpenZeppelin/openzeppelin-contracts/master/contracts/utils/context/Context.sol";
contract Math is Math, Context {
    function sqrt(uint x) internal pure returns (uint) {
        return Math._sqrt(x);
    }
}
