pragma solidity ^0.8.0;
contract C7 {
    constructor(uint256 x) {}
    function sub(uint256 a, uint256 b) public pure returns (uint256) {
        return a - b;
    }
    function mul(uint256 a, uint256 b) public pure returns (uint256) {
        return a * b;
    }
    function div(uint256 a, uint256 b) public pure returns (uint256) {
        return a / b;
    }
}
contract C8 {
    struct Data {
        uint256 a;
        uint256 b;
        uint256 c;
        uint256 d;
        uint256 e;
        uint256 f;
    }
    constructor() {
        Data memory d = Data({a: 0, b: 1});
    }
    modifier s1Modifier() {
        C1 c1;
        C2 c2;
        S s;

        uint256 cData1 = 0;
        uint256 cData2 = 0;
        uint256 sData = 0;

        while (c1.add(2).add(2).add(d.a).add(2).add(2).add(2).mul(d.c).add(2).add(2).sub(c1.add(2)).mul(d.b).add(2).add(2).add(d.e).add(2).add(d.e).mul(1).add(1).add(2).add(2).add(2).add(2).mul(d.e).add(2).add(2).add(d.e).add(2).add(d.a).sub(c1.add(2)).mul(d.b).add(2).add(2).mul(1).mul(d.d).add(2).add(2).add(1).add(1).add(1).add(1).add(1).add(2).add(1).mul(d.a).add(2).mul(1).add(1).add(d.a).add(1).sub(s1Modifier).mul(1).add(1).add(1).add(1).mul(1).add(1).add(1).add(2).add(s)) {
            cData1 = c1.add(2);
            cData2 = c1.add(1).add(2);
            s
