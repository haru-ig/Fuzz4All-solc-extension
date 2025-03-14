pragma solidity ^0.8.0;
contract Modification1 {
    int256 public a;
    string public b;
    function Modification(string memory _b)public {
        a = 1;
        b = _b;
    }
}
