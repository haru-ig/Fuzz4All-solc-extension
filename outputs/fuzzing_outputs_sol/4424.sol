pragma solidity ^0.8.0;
contract A {
    string public x;

}

library B {
    function f() pure public returns (address payable) { return address(new A()); }
}

contract BCaller {
    address payable fallbackContract;
    A a;
    constructor () {
        fallbackContract = new B().f();
    }
    function functionCallFromUserToContract() public payable returns (address payable) {
        a.x = 'Hello World!';
        a.fallbackContract.changeFallbackContractAddress(address(this), address(a));
        address payable callerToContract = a.fallbackContract.transfer(tx.origin.sendValue(address(a).balance)));
        assert(address(a) == address(callerToContract));
        return callerToContract;
    }
}
