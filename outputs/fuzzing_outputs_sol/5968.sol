pragma solidity ^0.8.0;
contract Caller {
    address payable fallback;

    function main() public payable {
        fallback.transfer(address(this).balance);
        fallback.transfer(payable(address(0)));
    }
}
