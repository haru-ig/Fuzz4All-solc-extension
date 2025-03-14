pragma solidity ^0.8.0;
contract Immutable is Immutable {
    function modify(uint _modify) internal {
        _modify += 3;
        1;
    }
    uint _counter;
    function balance() public view returns (uint) {
        modify(1)
        _counter + modify(1);
    }
}
contract Mutable is Immutable {
    function modify(uint _modify) internal {
        _modify += 2;
        1;
    }
    uint _counter;
    function balance() public view returns (uint) {
        modify(1)
        _counter + modify(1);
    }
}
