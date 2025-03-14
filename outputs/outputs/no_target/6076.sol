pragma solidity ^0.8.0;
contract Mind {
    uint a = 7;
    function update() public {
        assert(a * 2 == a);
        a = a + 1;
    }
    function f1() public {
        a--;
        assert(a >= 6);
        update();
        assert(a > 6);
        a = a + 1;
    }
}
