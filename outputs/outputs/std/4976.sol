pragma solidity ^0.8.0;
import "./EquivalentMutated.sol";
contract EquivalentInvertedMutated {
    EquivalentMutated public immutable eq;
    uint256 private amount;
    constructor() public {
        EquivalentMutated memory e = new EquivalentMutated();
        eq = e;
        amount = 0;
    }
    function getAmount(uint256 _index) public view returns (uint256) {
        return eq.getAmount(_index);
    }
    function setAmount(uint256 _amount) public {
        uint256 _amountInv = 1 / _amount;
        _setAmount(_amountInv);
    }
    function _setAmount(uint256 _amount) private {
        uint256 _oldAmount = amount;
        eq.setAmount(_amount);
        amount += _amount * (_oldAmount - _amount);
    }
}
