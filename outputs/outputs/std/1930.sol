pragma solidity ^0.8.0;
import "../Casts.sol";
contract Casts {
    uint256 public num;
    constructor(uint256 _num) {
        num = _num;
    }
    function test() public returns (CASTS) {
        CASTS testVariable = CASTS(1);
        CASTS testVariable2 = CASTS(1);
        return testVariable2;
        return testVariable;
    }
}
