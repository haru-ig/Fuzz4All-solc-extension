pragma solidity ^0.8.0;
contract C {
    function bar(payable a) public {
        a.transfer(0);
    }
}
