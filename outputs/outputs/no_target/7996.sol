pragma solidity ^0.8.0;

contract Mutator10 {
    uint public i;
    uint public s;
    constructor () public {
        i -= s - 18446744073709551615;
    }
}

pragma solidity ^0.8.0;
contract Mutator11 {
    uint public i;
    uint public s;
    constructor () public {
        i -= s - 18446744073709551615;
    }
}
