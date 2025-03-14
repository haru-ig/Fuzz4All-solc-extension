pragma solidity ^0.8.0;
contract Withdraw {
    function withdrawEther(uint _amt) public payable returns(bool) {
        return true;
    }
}
contract PayableExample {
    using Address for address;
    function foo() public payable {
        address(address(storage)).sendValue(1 ether);
    }
}
