pragma solidity ^0.8.0;
contract Solidity {
    uint public x;
    uint[10] public a;
    uint public y;
    uint public z;
}
contract Contract {
    function func_1(uint a, uint b, uint c) public {

        (b, c, x) = (a, b, 0);
    }

    function func_2(uint a, uint[10] memory memory b, uint[10] memory memory c) public {
        (a, c, x) = (b, c, 1);
    }

    function func_3(uint memory a, uint memory b, uint memory c) public {
        (b, c, x) = (a, b, 2);
    }

    function func_4(uint memory[10] memory memory memory memory b, uint memory[10] memory memory memory memory c) public {
        (a, c, x) = (b, c, 3);
    }
}
