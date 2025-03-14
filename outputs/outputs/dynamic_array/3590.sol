pragma solidity ^0.8.0;
contract C2 {
    enum D {
        G
    }
    D[3] public _d;
    function c() public {
        _d[0] = D.G;
        _d[0] = D.G;
        _d[0] = D.G;
    }
}

contract HelloWorld {

    function () external payable {}
}
contract HelloWorld2 {

    function () public pure payable {}
}
