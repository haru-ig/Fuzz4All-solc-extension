pragma solidity ^0.8.0;
contract MyCallsCallAndFallbackFunctionTwoWithNoExceptionTwo {
    uint256 [3] data;
    function setData(uint y) public { data = [y, x, x + y]; }
    uint256 x;
    function getData(uint k) public view returns (uint z)
    { z = data[k]; }
    receive() external payable {}
    fallback() public payable {}
}

pragma solidity ^0.8.0;
contract MyCallsCallAndFallbackFunctionThree {
    uint256 [3] data;
    function setData(uint y) public { data = [y, x, x + y]; }
    event Transfer(address indexed from, address indexed to, uint256 id);
    uint256 x;
    function getData(uint k) public view
    { x = data[k - 3]; emit Transfer(msg.sender, address(this), k); }
    receive() external payable { emit Transfer(from, msg.sender, id); }
    fallback() public payable
    {
        emit Transfer(address(this), msg.sender, id);
    }
}
