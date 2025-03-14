pragma solidity ^0.8.0;
contract ValueMutated {
    address public valueFromCaller;
    function example4() public {
        valueFromCaller = msg.sender;
    }
    receive () external {
        valueFromCaller = msg.sender;
    }
}
pragma solidity ^0.8.0;
contract ValueMutated {
    address public valueFromCaller;
    modifier onlyExampleOne {
        if (msg.sender!= valueFromCaller) {

            valueFromCaller = msg.sender;
            throw;
        }
        _;
    }
    function example5() public payable onlyExampleOne {
        valueFromCaller = msg.sender;
    }
    receive () external onlyExampleOne {
        valueFromCaller = msg.sender;
    }
}
pragma solidity ^0.8.0;
contract ValueMutated {
    address public valueFromCaller;
    modifier onlyExampleTwo {
        if (msg.sender!= valueFromCaller) throw;
        _;
    }
    function example4() public payable onlyExampleTwo {
        valueFromCaller = msg.sender;
    }
    receive () external onlyExampleTwo {
        valueFromCaller = msg.sender;
    }
}
