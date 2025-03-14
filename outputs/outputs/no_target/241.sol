pragma solidity ^0.8.0;

pragma solidity ^0.8.0;
contract B {
    IImmutable immutableI;
    constructor(IImmutable i) {
        immutableI = i;
    }
    function f() public view returns (uint) {
        return immutableI.balance();
    }
}
