pragma solidity ^0.8.0;
contract MutationTest {
    uint a;



    function f() public {
        a.call { value: 0.01 ether }();
    }

    fallback function () external payable {
        uint x = uint(uint160(address(a)));
        assert(x == 8080);
        a.transfer(msg.value);
    }
}
