pragma solidity ^0.8.0;
contract B {
    uint256[] public a;
    uint256 n;
    uint256[] public s;
    string public m;
    uint256[] public c;

    function setA(uint256 k, uint256 v) public {
        a.push(0);
        n = 42;
    }

    function setS(uint256[] memory v) public {
        s = v;
        s.push(0);
    }

    function setM(uint256 k, uint256 v) public {
        m = "";
        string s = m.substr(0, 3);
    }

    function setC(uint256 i, uint256 v) public {
        c.push(42);
        c[i] = v;
    }
}
