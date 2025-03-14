pragma solidity ^0.8.0;

contract Modification2 {
    int256 public a;
    string public b;
    bytes32 public c;
    bytes32 public d;
    function Modification(string memory _b,bytes32 _c)public {
        a = 1;
        b = _b;
        c = _c;
    }
}
