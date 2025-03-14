pragma solidity ^0.8.0;
contract Caller {
    function callWithFallback() public payable {

        Mutator m = new Mutator();
        m.payWithFallback(address(this));

        Reverter r = new Reverter();
        r.doNothing();


        Mutator m1 = Mutator(address(this));
        m1.payWithFallback(address(this));

        Mutator m2 = Mutator(new Caller());
        m2.payWithFallback(address(this));

        Reverter r1 = Reverter(address(this));
        r1.doNothing();


        revert("Test");
    }
}
