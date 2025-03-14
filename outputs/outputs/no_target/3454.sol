pragma solidity ^0.8.0;
contract m06 {
    function M6() public {
        address payable addr = address(new M6());
        addr.balance;
    }
}
