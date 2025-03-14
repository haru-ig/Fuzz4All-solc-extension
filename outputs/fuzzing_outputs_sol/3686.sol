pragma solidity ^0.8.0;
contract Example6 {
    function callExample5() public returns (uint) {
        Example5 example2 = new Example5();
        uint[5] memory numbers = [2, 3, 5, 6, 5];
        uint addition = example2.add6Sum(numbers);
        assert(addition == 11, "Add6 sum should be 11 but is {0}", addition);
        return addition;
    }
    function callExample6(uint a) public returns (uint) {
        uint callExample5Value = Example6(address(this)).callExample5();
        uint addition = a + callExample5Value;
        assert(addition == 18, "Add value is {0} which should be 18 but is {1}", a, addition);
        return addition;
    }
    function callExample7() public {
        uint a = 1;
        Example6 example2 = new Example6();
        uint callExample5Value = Example6(address(this)).callExample5();
        uint addition = a + callExample5Value;
        assert(addition == 18, "Add value is {0} which should be 18 but is {1}", a, addition);
    }
    function callExample8(uint a, uint b) public returns (uint) {
        uint addition = a + b;
        addition = a + addition;
        assert(addition == 27, "Add value is {0} which should be 27 but is {1}", a, addition);
        return addition;
    }
    function callExample9() public returns (uint) {
        uint[5] memory numbers = [2, 3, 5, 6, 5];
        uint addition = Example6(address(this)).callExample5() + Example6(address(this)).callExample5();
        assert(addition == 11, "Add6 sum should be 11 but is {0}", addition);
        return addition;
    }
}
