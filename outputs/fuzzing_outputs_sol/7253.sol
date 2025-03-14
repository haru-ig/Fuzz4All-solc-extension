pragma solidity ^0.8.0;
contract MutatedValue {
    address public valueToCaller;
    constructor(address _caller) {
        valueToCaller = _caller;
    }
    function example() public {
        address _previous = valueToCaller;

        uint _value = lowLevelCall();
        assert(_value == _previous);

        valueToCaller = _caller;
        valueToCaller = _previous;
    }
}

pragma solidity ^0.8.0;
contract SendEtherToCaller {
    constructor(address _caller) {
    }
    function example() public payable {}
}

pragma solidity ^0.8.0;
contract Caller {
    address valueOfContractToCaller;
    constructor(address _caller) {
        valueOfContractToCaller = _caller;
    }
    function example2() public returns (uint) {
        return call();
    }
    function call() private returns (uint) {
        return callToContract();
    }
    function callToContract() private {
        valueOfContractToCaller.call{value: msg.value}("");
    }
}
