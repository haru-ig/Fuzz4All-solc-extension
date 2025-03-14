pragma solidity ^0.8.0;
contract MutatedExamples1 {
    function getUint() public pure returns (uint32, uint32) {
        uint32 x = 0;
        x += 50;
        return (x, x + 20);
    }
    function mutate() public pure returns (uint32, uint32) {
        uint32 a; bool b; uint32 c = 0; uint32 d; uint32 e = 0; uint32 f = 0;
        (a, b) = getUint();
        c += -a;
        d = (a + c);
        e = a + 20;
        f = a + 5;
        return (d, e);
    }
}
