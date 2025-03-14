pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;

struct Mutable {
    uint256 x;
    uint256 functionReturns() returns(uint) {
        return x + 1;
    }
}
contract MutatedSemanticallyEquivalentAssemblyExample10 {
    function main() public pure {
        Mutable memory x;
        modify(x);
        x.x = 5;
    }

    function modify(Mutable memory m) {
        m.x = 2;
        m.x++;
    }
}
