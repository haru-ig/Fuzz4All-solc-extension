pragma solidity ^0.8.0;
contract semanticallyEquiv3{
}
contract semanticallyEquiv4 {
    function c() public pure { }
}



contract semanticallyEquiv2And3{
    function f() public pure { }
    function g() public {
        semanticallyEquiv2 y;
        semanticallyEquiv3 x;
        y=x;
        semanticallyEquiv2And3 y1;
        semanticallyEquiv3And1 x1;
        uint256 z;
        semanticallyEquiv2And4 y2;
        semanticallyEquiv3And4 x2;
        semanticallyEquiv4And2 x3;
        semanticallyEquiv4And3 y3;
        require(y1==y);
    }
}
