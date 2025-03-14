pragma solidity ^0.8.0;
contract Mutated6 {

    constructor() {
        uint x = 10 * 200;
        x=x>200?x:200;
    }
}

pragma solidity ^0.8.0;
contract Mutated7 {

    uint x = 10 * 200;

    constructor() {
        x=x>200?x:200;
    }

}
