pragma solidity ^0.8.0;
contract Checked {
    function method() internal {
        assert((uint(20)/uint(10))%uint(1000)!=0);
    }
}
