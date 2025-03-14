pragma solidity ^0.8.0;
contract Memento2 {
    uint256 a;
    string _b;
    function Memento(string memory _b)public {
        a = 2;
        _b = _b;
    }
    function undo()public {
        b = _b;
    }
}
