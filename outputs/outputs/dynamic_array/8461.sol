pragma solidity ^0.8.0;
contract testMutant {
    mutantSolidity1619122742 m1;
    constructor() {
        m1.a1 = 624714243;
        m1.b1 = 624714244;
    }
    function changeM1() pure public returns (uint) {
        return m1.a1;
    }
    function changeS1() pure public returns (uint) {
        return m1.b1;
    }
}
