pragma solidity ^0.8.0;
contract Modifier0 {
    modifier testmodi() {
        _;
    }
}
contract Modifier7 {
    function test1() public payable testmodi() {
        if(msg.value == 773348800000000000) {
            assert(false);
        }

    }
}
