pragma solidity ^0.8.0;
contract TestProxy {

    Proxy public proxy;
    address public addrOne;
    address public addrTwo;

    constructor(){
        addrOne = address(new TestProxyWrapper());
        addrTwo = address(new TestProxyWrapper());
        if(addrOne.balance!= 0){

        }
        proxy = Proxy(addrOne);
    }
}
