pragma solidity ^0.8.0;
contract MutateSemantic6MutatedCaller {
    event Evt(uint256 a);
    function modifyF(uint x, uint y) public override {
        emit Evt(x + y);
    }
}
contract MutateSemantic6InterfaceCaller {
    uint constant A = 1;
    uint constant B = 1;
    uint constant C = 0;
    function modifyA(uint x) public virtual override {
        A = x+1;
    }
    function modifyB(uint x) public virtual override pure {
        B = x+1;
    }
    function modifyC(uint x) public override {
        C = x+1;
    }
}
