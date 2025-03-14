pragma solidity ^0.8.0;
contract Check_0058 {
    function mutant() public pure returns (string memory m, uint8 v) {
        v = 3;
        m = string(0);
        return (m, v);
    }
}




contract Check_0028_check {
    using Check_0028 for string;
    using Check_0058 for string;
    function f () public pure returns (string memory s, uint8 v) {
        (s, v) = mutant();
    }
    function test(string memory s) public pure returns (string memory a1, uint8 a2) {
        (a1, a2) = f();
    }
    function testA1(string memory s) public pure returns (string memory a1, uint8 a2) {
        test(s);
    }
}


contract Check_0050 {
    using Check_0028 for string;
    using Check_0058 for string;

    modifier onlymutant() {
        (string memory m, uint8 v) = mutant();
        require(v == 3, "v must be 3");
        _;
    }

    modifier onlyinvalid() {
        require(false);
        _;
    }

    function g() public returns (string memory m, uint8 v) {
        m = "a";
        v = 3;
    }

    function h() public pure returns (string memory m, uint8 v) {
        m = "b";
        v = 3;
    }
    function mutant() public pure returns (string memory m, uint8 v) {
        v = 3;
        m = "a";
        return (m, v);
    }
}

contract Check_0050_check {
    using Check_0050 for uint8;
    using Check_0050 for string;
    using Check_0050 for string[];
    function testA1() public pure {
        (string memory s, uint8 v) = g();
        (s, v) = (1, v);
    }
    function testB1() public pure {
        (string memory s, uint8 t) = h();
        (string memory a2) = (t);
        (a2) = (s);
    }
}
