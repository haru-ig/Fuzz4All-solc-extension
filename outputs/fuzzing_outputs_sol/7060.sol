pragma solidity ^0.8.0;
address SomeEtherReceiver = 0x83619A8172771d9b27C732637692B946c4691884;
function someExternalCall() payable external {    contract DummyContract{
        SomeEtherReceiver.transfer(this.balance);
    }
    }
}
contract EquivalentContract {
    function fallback() external payable {
    }
}
