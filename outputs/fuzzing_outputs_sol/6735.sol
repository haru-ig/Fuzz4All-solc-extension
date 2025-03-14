pragma solidity ^0.8.0;
contract Mutator {
    function Mut(uint a) public {
        require(a % 70 > 45, "a is not a mut");
        emit MutLog(a);
    }
    fallback function MutFallback() public payable {}
    event MutLog(uint a);
}
pragma solidity ^0.8.0;
contract Caller {
    function Call(Mutator m) public {
        uint x;
        uint y = 0;
        require(m.Mut(x), "x is not accepted");
        require(x == 70, "x is not accepted");
        emit Log("mut: %u %u", x, y);
        require(m.Mut(x + 1), "x+1 is not accepted");
        x += 10;
        require(m.Mut(x), "x is not accepted");
        require(x == 170, "x is not accepted");
        y += 7;
        require(m.Mut(x + 1), "x+1 is not accepted");
        x += 212;
        require(m.Mut(x), "x is not accepted");
        require(x == 28720, "x is not accepted");
    }
    fallback function CallFallback() public {
        uint x;
        uint y = 0;
        uint z = 0;
        require(m.Mut(x), "x is not accepted");
        require(x == 70, "x is not accepted");
        emit Log("mut: %up %up %u", x, y, z);
    }
    event Log(string x, string y, uint z);
}
