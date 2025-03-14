pragma solidity ^0.8.0;
contract SimpleCaller {
    function call() public {
        transfer(msg.sender, 10);
    }
    receive() external payable {
    }
}
contract Caller {
    constructor(){}
    function get() public view returns (uint256) {
        return (uint256(address(this)) + 1);
    }
    function transfer(address _to, uint _value) public {
        emit Receive(_to, _value);
        (bool sent, ) = address(_to).call{value: _value}("");
        require(sent);
    }
    event Receive(address indexed _to, uint _value);
}
