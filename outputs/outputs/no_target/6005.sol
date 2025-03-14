pragma solidity ^0.8.0;
contract Test {
    uint x = 42;
    struct Memory { uint8 y; uint8 z; uint8 w; uint8 x; bool y; }
    function mutator(Memory memory memory) internal returns (Memory memory) {
        memory.w -= 1;
        memory.w += 1;
        memory.x -= memory.y * 2;
        return memory;
    }
    function get() public pure returns(uint){
        return 10;
    }
}

pragma ton-solidity-version >= 0.33.0
contract TONERC2617Test {
    function check() public returns(uint128) {
        return uint256(x);
    }
    function foo() public returns(uint) {
        return 10;
    }

    function check2() public returns(uint128) {
        return TONERC2617Test.get(x);
    }
    function foo2() public returns(uint) {
        return TONERC2617Test.foo(2);
    }

    function call0() public {
        Lib.MyStruct memory a;
        Lib.MyStruct memory b = Lib.mutator(a);
        Lib.MyStruct memory c;
        c = Lib.mutator(b);
        TONERC2617Test.call1(0, 0);
        TONERC2617Test.call1(x, x);
    }

    function call1(uint128 x) public {
        Lib.MyStruct memory a;
        Lib.MyStruct memory b = Lib.mutator(a);
        Lib.MyStruct memory c;
        c = Lib.mutator(b);
        TONERC2617Test.call0();
        TONERC2617Test.call0(0);
    }

    function call2(uint128 x, uint128 y) public returns(uint) {
        Lib.MyStruct memory a;
        Lib.MyStruct memory b = Lib.mutator(a);
        Lib.MyStruct memory c;
        c = Lib.mutator(b);
        TONERC2617Test.call0();
        emit_event(abi.encode(x, y));
        return 10;
    }

    function call3(uint128 x, uint128 y) public returns(uint) {
        Lib.MyStruct memory a;
        Lib.MyStruct memory b = Lib.mutator(
