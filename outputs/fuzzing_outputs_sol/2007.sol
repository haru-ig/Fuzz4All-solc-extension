pragma solidity ^0.8.0;
contract Mutater7 is Mutater6 {
    function mutatedFunction(uint32 value) public payable {
        callMutater();
    }
    function callMutater() public pure {
        callMutater2();
    }
    function callMutater2() public pure {
        delete (18, "123456");
        delete (32, 1234);
    }
}
