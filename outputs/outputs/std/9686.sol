pragma solidity ^0.8.0;
contract MutateBigNeg {
    uint x;
    uint y;
    bool b;

    constructor() {
        x = 0x3;
        y = 0;
        b = true;
    }
    function setx() private returns (uint) {
        x = 0x2;
    }
    function getx() private view returns (uint) {
        return x;
    }
    function sety() private view returns (uint) {
        y = 0x2;
        return y;
    }
    function gety() private view returns (uint) {
        return y;
    }
    function setb(uint x) private {
        b = x;
    }
}

pragma solidity ^0.8.0;
contract ArrayIssue1 {
    bytes1[] public x;
    uint[3][] public y;
    bool[] public z;
    constructor() {
        x = new bytes1[](3);
        y = new uint[3][];
    }
}
contract ArrayIssue {
    uint[] public y;
}

contract ArrayIssue2 {
    uint[3] a;
}
