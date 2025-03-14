pragma solidity ^0.8.0;
contract Example6 is Example5 {
    fallback (uint amount) public payable {}
    function doNothing() public payable {}
    receive () external payable {}
    receive () public payable {}
    function receive() public payable {}
}
