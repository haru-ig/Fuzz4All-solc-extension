pragma solidity ^0.8.0;
contract MutatedTest {
    MutatedMath public math;
    function testMath(uint256 _a, uint256 _b) public {
        uint constant _c = 22738;
        uint constant _d = 1337;






        uint256 c = 134_08;
        uint256 d = 229_08;

        math.add(c, d);
        math.add(c, d);
        math.add(c, d);
        math.add(c, d);
        math.add(c, d);
        math.add(c, d);
        math.add(c, d);


        math.add(0xffffffffFFFFffff, c);
        math.add(0xffffffffFFFFffff, 0);

        math.add(22378, 2);
    }
}
