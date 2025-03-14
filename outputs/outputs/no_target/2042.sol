pragma solidity ^0.8.0;
contract Modification42 {
    uint256 public a;
    string public b="hi";
    function Modification(string memory _b)public {
        a = 1;
        b = _b;
    }
}
