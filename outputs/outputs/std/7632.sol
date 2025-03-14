pragma solidity ^0.8.0;
contract BadCase2 {
    uint j;
    function changes6(uint) public {
        j = j;
    }
}
contract BadCase9 {
    function modifies4(uint[5] memory x) public {
        x[4] += 4;
        x[5] += x[4];
    }
}
contract VeryBadCase2 {
    function modifies4(uint[5][5] memory x) public {
        x[0][0]--;
    }
}
contract VeryBadCase9 {
    function modifies6(uint[5][5][5] memory x) public {
        uint j = x[0][2][0][2];
        x[0][0] -= 17;
        x[2][4][4][0][3] -= j;
    }
}
contract UnconventionalContractExample5 {
    address a;
    uint[5] b;
    function modifies2(uint[5][5][5] memory x) public {
        b = a;
    }
}
contract UnconventionalContractExample9 {
    address a;
    uint[2][5][5][5] b;
    function modifies2(uint[2][5][5][5] memory x) public {
        b[0] = b;
    }
}
contract A {
}
