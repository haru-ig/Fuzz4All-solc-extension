pragma solidity ^0.8.0;

import 'https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/math/SafeMath.sol';
contract test {
    using SafeMath for uint256;
    uint public constant decimals = 0;
    function test() public {
        int256 x = 5;
        uint256 y = x.mul(constants.decimals()).safeAdd(50);
        uint256 z = safeAdd(50);
        assert(y == safeSub(x, y));
    }

    modifier onlyZero() {
        if (_constantValue() == 0) {
            assert(true);
        }
        _;
    }
    function _constantValue() internal view returns (uint256) {
        return constant_variable;
    }
}
