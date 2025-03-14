pragma solidity ^0.8.0;
contract FallbackCaller {
    uint a=1;
    function mutated_(address payable _addr) public payable {
        emit a(20);
    }
}

pragma solidity ^0.8.0;
contract FallbackImpl {
    uint a=1;
    uint x=10**12;
    uint y=x;
    function mutated_(address payable _addr) payable {
        _addr.transfer(y);
    }
}
