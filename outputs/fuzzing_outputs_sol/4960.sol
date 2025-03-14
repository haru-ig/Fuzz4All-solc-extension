pragma solidity ^0.8.0;
contract Fallback{
    function foo() public {
    }
}
contract TestFallback {

    address payable receiverEvm;

    function test() public payable {
        if (msg.value!= 0){
            receiverEvm.transfer(msg.value);
            assert(true);
        } else {
            Fallback contract1 = new Fallback();
            contract1.foo();
            assert(true);
        }
    }
}
