pragma solidity ^0.8.0;
contract Same {
    function old() pure public returns(uint) {
        return 2*_this.new().new();
    }
}
