pragma solidity ^0.8.0;
contract ChangeSemanticsUsingYulWithSemantics {
    address public a;
    address public b;
    address public c;
    address public d;
    address public e;
    address public f;
    address public g;
function change1 (address v) public {
    a = v;
    assembly {
    mstore(a, 0)
    }
}
function change2 (address v) public {
    a = v;
    assembly {
    mstore(0, 0x00)
    }
}
}
