pragma solidity ^0.8.0;
contract F {
    uint public c;
    uint[15] public _y;
    uint public E = 42;
    function f() public {
        for (uint i = 0; i < 8; i++) _y.push(i);
        c = 1;
        E += 1;
    }
}

pragma solidity ^0.8.0;



contract Test063 {
    uint[16] private array0;

    constructor() {
        newArray();
    }

    function newArray() public {
        for (uint i = 1; i < 16; i++) {
            array0[i] = 0x1122334455667788;
        }
    }

    function f() public {
        for (uint i = 1; i < 15; i++){
            array0[i] = array0[i - 1];
            require(array0[i] == uint(uint8(i)), "not integer");
            array0[i] = -uint256(array0[i]);
            require(array0[i] == (uint(uint8(~i)) >> 56 & 0xffffffffffffffff), "wrong sign");
            array0[i] = uint(array0[i]) + uint(array0[i]);
            require(array0[i] == uint(array0[i]), "wrong values");
        }

        for (uint i = 0; i < 4; i++){
            array0[i] = 0x1122334455667788;
        }
        uint array1[2];
        array1[1] = 0x123456789abcdeFF;
        array1[0] = 0xcd50bcaaebb21185;

        if (add(array1).sub(array0).eq(uint(31), "wrong value
