pragma solidity ^0.8.0;
address x;
contract Test831B {
    function test() public payable {
        address[] memory y = new address[](2);
        y[0] = x;
        y[1] = x;
        x = x;
    }
}
