pragma solidity ^0.8.0;
contract mutationsolidity_legacycontracts0812_v0815 { uint[] a; uint[] b; uint[] c; uint[] d; }




pragma solidity ^0.8.2;
contract MyContract {
    address payable owner;
   uint public numberOfOwnedThings;

    constructor(uint initialValue) {
        numberOfOwnedThings = initialValue
    }

    function buy() payable public {
        require(msg.value >= 1wei, "Wrong amount of ether");
        require(numberOfOwnedThings < numberOfOwnerThings, "Can't buy more than you own");
        numberOfOwnedThings++;
        owner.transfer(msg.value);
    }

    function() payable fallback() {
        buy();
    }
}
