pragma solidity ^0.8.0;
contract Mutated {
    EquivalentMutated public equivalent;
    constructor() {
    equivalent = new EquivalentMutated();
    }
}

pragma solidity ^0.8.0;
contract Single {
}
contract Solution {

    Mutated public mutated;
    constructor() {
    mutated = new Mutated();
    }

}
