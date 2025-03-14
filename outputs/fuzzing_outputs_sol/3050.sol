pragma solidity ^0.8.0;
contract Example6 {
    function f() payable public {
        require(msg.value>0);
    }
}
