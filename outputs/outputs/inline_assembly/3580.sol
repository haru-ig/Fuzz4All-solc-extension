pragma solidity ^0.8.0;
contract SquashGenerationsUsingYulWithSemantics {
    uint256 public value1;
    uint256 public value2;
    uint256 public value3;
    uint256 public value4;
    uint256 public value5;
    uint256 public value6;
    uint256 public value7;
    uint256 public value8;
    uint256 public value9;
    uint256 public value10;
    uint256 public value11;
    uint256 public value12;
    uint256 public value13;
    uint256 public value14;
    uint256 public value15;
    address public a;
    address public b;
    address public c;
    address public d;
    address public e;
    address public f;
    function update (uint128 v) public {
        a = address(3);
        a = a;
        e = address(0x103);
        e = address(3);
        e = e;
        d = address(3);
        d = d;
        c = c;
        b = address(3);
        b = b;
        d = d;
        update();

        d = d;
        c = c;
        a = a;
        b = b;


        d = d;
    }
}
