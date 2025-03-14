pragma solidity ^0.8.0;
contract Mutator1 {
    struct Counter1 {
        uint counter;
    }
    function shouldBe1(Counter1 memory counter) public returns (bool check) {
        bool a = counter.counter > 3;
        bool b = counter.counter == 3;
        bool c = counter.counter == false;
        bool d = counter.counter < 3;
        bool e = counter.counter > 3;
        bool f = counter.counter >= 3;
        bool g = counter.counter > 3;
        bool h = counter.counter <= 3;
        bool i = counter.counter >= 3;
        bool j = counter.counter > 3;

        bool k = counter.counter < keccak256('x'.repeat(30));

        bool l = address(counter) == keccak256('x'.repeat(12));
        bool m = bytes(counter).length == 12;
        bool n = bytes(counter).length > 12;
        bool o = bytes(counter).length == 12;

        bool p = address(counter) > bytes(counter).length;

        uint[100] memory memory;
        uint[99] memory array;

        uint gas = 1000000;
        bool a = true && false && true && false;
        bool b = false || true || false || true;
        bool c = gas > gas;
        bool d = gas < gas;
    }
}
