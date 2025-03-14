pragma solidity ^0.8.0;
contract Program {
    function modify(uint[] memory arr) public {
        arr[3] = 10000;
    }
}
