pragma solidity ^0.8.0;
contract A {
    uint[] memory b1;
    A memory a0;
    constructor (bytes32 value) public {
        a0.b1.push(0);
        a0.b1.push(0);
        a0.b1 = value;
    }
}

pragma solidity ^0.8.0;
contract B{
    A b0;

    event Evt1(uint a1);
    event Evt2(uint a1);
    event Evt3(uint a1);
    event Evt4(uint a1);
    event Evt5(uint a1);
    event Evt6(uint a1);
    event Evt7(uint a1);
    event Evt8(uint a1);
    event Evt9(uint a1);
    event Evta(uint a1);
    constructor (uint a1, uint a2, uint a3, uint a4) public {
        b0.b1 = uint[2];
        b0.b1[0] = 0;
        b0.b1[1] = 0;

        b0.b1.push(a1);
        b0.b1.push(a1);

    }

    function test1() public view {
        assert(b0.b1[0] == 0);
        assert(b0.b1[1] == 0);
    }

    function test2() public {
        for (uint i = 1; i < a0.b1.length; i = i + 2) {
            a0.b1.push(0);
            a0.b1[i] = 0;
            a0.b1.push(0);
        }

        b0.b1.push(0);
        b0.b1.push(0);
        a0.b1.push(0);
        a0.b1.push(0);
        a0.b1.push(0);
        a0.b1.push(0);
        a0.b1[10] = 0;

        a0.b1.push(0);
    }

    function test3(uint num, uint subTest) public view {
        assert(a0.b1[subTest + num - 10] == 0);
    }

    function test4() public view {
        a0.b1[10] = 0;
        a0.b1[0] = 10;
        b0.b1[0]
