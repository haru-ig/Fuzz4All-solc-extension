pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;

contract MixedContactsExample83 {
    bool public override constant public A = true;

    bool public override constant public B = false;

    bool public override constant public C = true;

    bool public C1;
    bool public C2;

    uint256 public F;
    uint256 constant constantA0 = 1;
    uint256 constant constantA1 = 10;
    uint256 constant constantA2 = 20;
    uint256 constant F0 = 1;
    uint256 constant F1 = 20;
    constructor() {
        F = F0;
    }

    uint256 constant public F_CONST_0;
    uint256 constant public F_CONST_1 = 11;
    uint256 constant public F_CONST_2 = 12;
    uint256 constant public F_CONST_3 = 13;
    uint256 constant constantA3 = 1337;

    constructor(uint256 _arg) {
        if (_arg > 0) {
            F = _arg;
        } else {
            F = F_CONST_0;





            C1 = true;
        }
    }

    function doSomething() public pure {
        F = F1;
    }

    function changeConst(uint256 _arg1)
        public
        pure
        external
        returns (uint256, uint256)
    {
        uint256 _A0 = constantA0;
        uint256 _A1 = constantA1;
        uint256 _A2 = constantA2;
        uint256 _F0 = F_CONST_0;
        uint256 _F1 = F_CONST_1 + constantA1;
        uint256 _F2 = F_
