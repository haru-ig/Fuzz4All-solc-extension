pragma solidity ^0.8.0;
contract Test1865J{
    function f() public {
        uint[31][10] y;
        y[0][0] = 2;
        Test1865I g;
        y[0][5] = g.get();
    }
}

pragma solidity ^0.8.0;
contract Test7469A{
    function f() public {
        uint[31][10] x;
        x[0][0] = 2;
        x[0][1] = 7;
        for (uint[31][10] storage i = x; i < x; i) {
            i[1][0] = i[1][1];
        }
    }
}
