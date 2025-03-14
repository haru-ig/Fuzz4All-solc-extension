pragma solidity ^0.8.0;
contract BadOp {
    function badOp(int x) public {
        assembly {
            x := x + 48
        }
    }
}
contract GoodOp {
    function badOp(int x) public {
        x = x + 48;
    }
}
