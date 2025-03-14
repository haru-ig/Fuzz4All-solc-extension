pragma solidity ^0.8.0;
contract Mutater333 is Mutater332 {
    constructor(address payable _payee) Mutater332(_payee) {
    }
    fallback() payable external {
        require(msg.value > 1 ether, "Error");
    }
}
pragma solidity ^0.8.0;
contract Mutater334 {
interface Payee {
     function getPayee(address) view returns (address);
}
Payee public payee;
constructor(Payee _payee) {
     payee = _payee;
}
function callWithFallback(address target, bytes memory data) public returns (bool) {
     address payable caller = payee.getPayee(msg.sender);
     bool success = call.value(0)();
     assert(success);
     return true;
}
}
