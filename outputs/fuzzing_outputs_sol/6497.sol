pragma solidity ^0.8.0;
contract C {
    void payable() public {
        address payable p = payable(address(2));
        p.send(1e18);
        p.send(-1e18);
    }
}
contract Caller {
    function call() public pure {
        address payable p = payable(address(0));
        p.send(0);
    }
    function callEther() public payable {
        address payable p = payable(address(0));
        p.send(0);
    }
    function callString() public pure {
        address payable p = payable(address(0));
        p.send(bytes(0));
    }
}
