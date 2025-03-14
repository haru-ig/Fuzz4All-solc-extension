pragma solidity ^0.8.0;






contract Test42_Mutant {
    Test42_Equivalent public mutableEquivalent = new Test42_Equivalent();
    address[] public mutableAdmin = mutableEquivalent.admin();
    address[] mutable _admin = mutableEquivalent.admin();
    constructor () public {
    }
    function test() public {
        _admin.push(msg.sender);
        mutableEquivalent.destroy();
    }
    function destroy() public {
        mutableEquivalent.test();
    }
}
