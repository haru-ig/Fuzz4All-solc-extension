pragma solidity ^0.8.0;
contract Mutater342 {
    address payee;
    bool public callMutated;
    constructor(address payable _payee) {
        payee = _payee;
    }
    fallback() external payable {
        if (!callMutated) {
            mutater();
        }
    }
    function mutater() public { callMutated = true; }
}
contract MutaterFallback {
    address payable payee;
    Constructor2 myContract1(address payable _payee) {
        payee = _payee;
    }
    Constructor2 myContract2(address payable _payee) {
        payee = _payee;
    }
    Constructor2() Constructor2(address payable _payee) {
        payee = _payee;
    }
    function myFunction() public {
        payFee();
    }
    function payFee() public payable {
        }
    receive() external payable {}
}
contract MutaterFallbackInterface {
    Constructor2 myContract1(address payable payee);
    Constructor2 myContract2(address payable payee);
    Constructor2() Constructor2(address payable payee);
    function myFunction() public payable;
    function payFee() public payable;
}
contract Constructor2 {
    Constructor() public;
    address payable payee;
    new Constructor2 with (address payable _payee) public payee { mycontract = _payee; }
    Constructor2() with (address payable _payee) public payee { mycontract = _payee; }
    Constructor2() {
        address payable _payee;
    }
    Constructor2() constructor(address payable _payee) public payee { mycontract = _payee; }
    address payable mycontract;
}
contract Moo {
    address payable payee;
    constructor(address payable _payee) {
        payee = _payee;
    }
    constructor () payable payee {}
}

pragma solidity ^0.8.0;
contract Mutater334 {
    address payee;
    Constructor2 myContract1;
    Constructor2 myContract2;
    Constructor2 myContract3;
    Constructor2 myContract4;
    Constructor2 myContract5;
    Constructor2 myContract6;
    Constructor2 myContract7;
    Constructor2 myContract8;
    Constructor2 myContract9;
    Constructor2 myContract10;
    Constructor2(address payable _payee) {
        payee = _payee;
    }
    Constructor2() Constructor2(address payable _payee) payee {
        payee = _payee;
        myContract1 = new Constructor2(address(new Moo(payee)));
        myContract2 = new Constructor2(address(new Moo(payee)));
        myContract3 = new Constructor2(address(new Moo(payee)));
        myContract
