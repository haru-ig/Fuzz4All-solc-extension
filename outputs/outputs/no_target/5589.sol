pragma solidity ^0.8.0;
contract O {
    uint constant x = 1;
    uint constant y = 2;
    function g(uint a, uint b) pure internal returns (uint, uint){
        uint c;
        b / 54;
        c = b * 583 / 34;
        return (a, c);
    }
}
pragma solidity ^0.8.0;
contract O {
    uint constant x = 1;
    uint constant y = 2;
    event e();
    function g() public pure returns (uint, uint){
        uint c;
        c /= 34;
        c *= 375;
        return (a, c);
    }
}
pragma solidity ^0.8.0;
contract O {
    uint constant x = 1;
    uint constant y = 2;
    uint constant m = 75;
    uint constant w = 1;
    event e();
    mapping (uint => uint) m_;
    modifier f(uint a, uint b) {m_ [1] = b - a + 1; _;}
    modifier f(uint, uint a) {m_ [1] = a - a + 1; _;}
    function g() public pure returns (uint, uint){
        uint c;
        f (c, m_ [1]);
        c *= 87;
        return (a, c);
    }
}
pragma solidity ^0.8.0;
contract O {
    uint constant x = 1;
    event e();
    mapping (uint => uint) m_;
    function f(uint a, uint b) public pure {m_ [1] = b - a + 1; this.emit e();}
    function f(uint a) public pure {m_ [1] = a - a + 1; this.emit e();}
    function g() public pure {m_ [1] += 1; this.emit e();}
    function g(uint a) public pure {m_ [1] += a; this.emit e();}

    function h() public pure {uint x = m_ [1] + 1; if (x!= m_ [1]) this.emit e(); }

}
