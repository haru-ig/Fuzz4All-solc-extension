pragma solidity ^0.8.0;
contract mutated_Caller {
    function mutated_Caller() {
        MutatedCaller m = new MutatedCaller();
        require(msg.value==5);
    }
}
