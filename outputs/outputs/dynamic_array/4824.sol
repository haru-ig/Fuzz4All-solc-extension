pragma solidity ^0.8.0;
contract Test3 {
    uint public size;
    function Test3(uint initial_size) public {
        require(initial_size > 0);
        size = initial_size;
    }
    function Test1() public {
        uint _size = Test3(3).size;
    }
}
