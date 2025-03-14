pragma solidity ^0.8.0;
contract TestPrecompiled0d3ae {
    address payable payableRef;
    function test() public payable {
        payableRef.send(address(this));
    }
}
contract TestPrecompiled0d3af {
    address payable payableRef;
    function test() public payable {
        address selfAddress = address(this);
        payableRef.send(selfAddress);
    }
}
contract TestPrecompiled0d3b0 {
    address payable payableRef;
    function test() public payable {
        address selfAddress = address(this);
        selfAddress.send(selfAddress);
    }
}
