pragma solidity ^0.8.0;
contract MyContract {
    uint256 constant two      = 2;
    uint256 constant three    = 3;
    uint256 constant four     = 5 - 5;
    uint256 constant five     = two + 5;
    uint256 constant six      = 1 + 15;
    uint256 constant notZero  = 2;
    uint256 constant twoNotZero= 1 + notZero;

    function callFunc(uint256 addend) public nonReentrant {
        add(addend);
        sub(subtr());
        div(div());
        mod(mod());
        xor(xor1());
        or(or2());
        and(and3());
        orD(orD1());
        andD(andD2());
    }
}
