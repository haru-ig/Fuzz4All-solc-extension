pragma solidity ^0.8.0;
contract SquashGenerationsUsingYulWithSemantics2 {
    address public a;
    address[] public b;
    address[] public c;
    address[] public d;
    address[] public e;
    address[] public f;
    function update(address[] memory newb, address[] memory newc) public {
    a = address(3);
    e = address(0x103);
    e = address(3);
    d = address(3);
    b = newb;
    c = newc;
    }
}
