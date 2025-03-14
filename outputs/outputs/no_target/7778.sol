pragma solidity ^0.8.0;
contract C {
    function changeContract(address from, address to) public {
        TestLib.log1(0);
        from.transfer(to);
    }
}
