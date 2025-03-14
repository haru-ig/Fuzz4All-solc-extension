pragma solidity ^0.8.0;
contract MutatedExamples4 {
    function mutated1(uint x, uint y) returns(uint z) {
        checkedAdd(x, y);
        uncheckedSub(y, x);
        unchecked(x!= y);
        return 1;
    }
    function mutated2(uint x) private returns(uint z, uint y) {
        z = x+50;
        y = x*2;
        uncheckedAdd(y, x);
        uncheckedSub(y, x);
        unchecked(x!= y);
        return (z, y);
    }
    uint32 y = 20;
    uint32 x = 60;
    function checkedAdd(uint x, uint y) internal pure {
        checked20(x, y);
        unchecked20(y, x);
        unchecked20(x, 100);
        unchecked(uncheckedAdd(uncheckedSub(x, y), x) == x+y);
    }
    function checked20(uint x, uint y) internal pure {
        unchecked(x+y == 20);
    }
    function uncheckedSub(uint x, uint y) internal pure {
        unchecked(x-y == 100);
    }
    function unchecked(bool b) internal nonpayable {
        unchecked((b == false));
    }
}
