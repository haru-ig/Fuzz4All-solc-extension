pragma solidity ^0.8.0;
contract NewSemanticsFallbackMutatingPayable {
    uint256 old1 = 24;
    uint256 old2 = 37;
    uint256 old3 = 53;
    uint256 old4 = 61;
    uint256 old5 = 70;
    uint256 old6 = 80;
    uint256 newValue = old1 + old5 + old2 - old4 + old6;
    uint256 oldOld = old1 * old2 - old3;
    uint256 oldOldOld = old2 * old3;
    function a(uint256 _v) internal {
        oldOld = oldOld - old4;
        old4 /= old6;
        oldOld *= newValue;
        old4 *= _v * oldValue;
        oldOldOld *= oldValue;
        oldOld *= oldOldOld;
        old4 -= oldOldOld;
    }
    function b(uint256 _v) internal {
        old2 += old3 - old6;
        old2 = old2 - _v * newValue - old4;
        old2 -= old1 / _v - newValue + _v + oldOld/ _v;
        old4 -= oldOld / _v;
        old1 += old1 / _v;
    }
    function c(uint256 _v) internal {
        newValue = newValue + old4 - _v;
        a(_v);
        b(newValue);
    }
}
