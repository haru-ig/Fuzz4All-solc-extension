pragma solidity ^0.8.0;
contract Test1 {
    uint8[] _arr;
    constructor()
        public
        {
            while(true)

                _arr.push(50);
        }
}
pragma solidity ^0.8.0;
contract Test {
    function f0() public pure {}
    function f1() public pure {}
    function f3() public pure view returns(uint8) {


        return 1;
    }
    function f11() public pure view returns(uint16[1] memory) {
        uint16[1] memory r;
        r[0] = 1;
        return r;
    }
    function f4() public pure returns(uint16) {
        uint16[1] memory r = f11();
        return r[0];
    }
    function f5() public pure() {
        uint16[1] memory r = f11();
        return r[0];
    }
    function f6() public pure {
        uint16[1] memory r = f3();

        return getSum(r);
    }
    function f8() public pure pure returns(uint16) {
        uint16[1] memory r = f1();
        return getSum(r);
    }
    function getSum(uint16[1] memory i) public pure pure returns(uint16) {
        uint16 x = i[0];
        return (uint16)(uint256(x) + x);
    }
    function f9() public pure {
        uint16 x;
        x = 1;
        return (uint16)(uint256(x) + x);
    }
    function f10() public pure {
        uint16[1] memory x;
        x[0] = 1;
        return (uint16)(uint256(x)[0] + x[0]);
    }
    function f12() public pure {
        uint16[1] memory x;
        x[0] = 1;
        return getSum(x);
    }
}
/* In Solidity code, accessing the length variable of a function is the same as accessing the storage slot of the function itself.
