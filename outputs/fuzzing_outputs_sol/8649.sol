pragma solidity ^0.8.0;
contract Sender {
    Mutator public mutator;
    constructor() {
        mutator = new Mutator();
    }
    function call() public {
        mutator.call.value(10 ether)("");
    }
}

pragma solidity ^0.8.0;
contract Caller {
    Mutator public mutator;
    constructor(address _mutator) {
        mutator = Mutator(_mutator);
    }
    function call() public {
        mutator.call();
    }
}
