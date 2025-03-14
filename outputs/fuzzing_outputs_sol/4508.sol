pragma solidity ^0.8.0;
contract MutatedSame {
    function get(uint x, uint y) public pure returns (uint) {
        uint result = x * y;
        x = x + 1;
        x %= 2;
        return result;
    }
    function get(uint x, uint y, uint z) public pure returns (uint) {
        return get(x, y);
    }
    function get(uint x) public pure {
        uint x = x + 1;
        x %= 2;
    }
}

pragma solidity ^0.8.0;
contract MutatedDifferent {
    function doSomethingAndChange(uint x) public pure {

    }
    function doNothing() public pure {

    }
    function get(uint x, uint y, uint z) public pure returns (uint) {
        x = x() + 1;
        return x;
    }
}
contract Test {
    SemanticDifferent instance1 = new SemanticDifferent();
    HighLevelDifferent instance2 = new HighLevelDifferent();
    HighLevelDifferent instance3 = new HighLevelDifferent();
    HighLevelSame instance4 = new HighLevelSame();
    MutatedDifferent instance5 = new MutatedDifferent();
    MutatedDifferent instance6 = new MutatedDifferent();
    MutatedSame instance7 = new MutatedSame();
    function test(uint z, uint t) public {

        instance1.get(1);

        instance2.get(1, 3, z);

        instance3.get(1, 3, 2 * t);

        instance4.get(1, 2);

        instance5.doSomethingAndChange(t);
        instance5.doNothing();

        instance6.get(1, 2, t);

        instance7.get(1, 2, t);
    }
}
