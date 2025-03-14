pragma solidity ^0.8.0;
contract FallbackDemo {
    Ether e;
    fallback () external payable {
        assert(e.balance!= 0);
    }
    receive () external payable {}
}
