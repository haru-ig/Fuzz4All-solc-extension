pragma solidity ^0.8.0;
contract MutatedCaller {
    function mutate(address self_) public {
        BogusCaller(self_).send();
    }
}
