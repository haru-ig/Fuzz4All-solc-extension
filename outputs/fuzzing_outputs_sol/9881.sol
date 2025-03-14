pragma solidity ^0.8.0;
contract Caller {
    function call(address _c) public {
        emit Emitted(address(this).balance,_c.balance);
    }
}

contract New {
    function call(address _c) public payable {
        emit Emitted(address(this).balance,_c.balance);
        require(_c.balance == 0.0);
    }
    event Emitted(address, uint);
}
