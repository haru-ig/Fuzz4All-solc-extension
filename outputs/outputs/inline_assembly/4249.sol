pragma solidity ^0.8.0;
import "./Mutators15SemanticallyEquivalentMutated2.sol";
contract Mutators15SemanticallyEquivalentMutated3 {
    Mutators15SemanticallyEquivalentMutated2 public m;
    constructor (uint Y) public {
        m = new Mutators15SemanticallyEquivalentMutated2(Y);
    }
    function increment (uint _returnData) public returns (uint) {
        uint n = m.increment(_returnData);
        return (n - 2);
    }
}
