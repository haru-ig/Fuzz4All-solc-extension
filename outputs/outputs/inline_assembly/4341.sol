pragma solidity ^0.8.0;
interface IExampleInterface {
    function modify1(uint x) external;
    function modify2(uint x) external;
    function modify3(uint x, uint y) external;
}

pragma solidity ^0.8.0;
library ExampleLibrary {
    uint A;
    function g() public pure returns (uint _g) {
        _g = A;
    }
}
contract ExampleMutator is ExampleInterface {
    uint public A = 1;
    function a(uint x) external {
        A += x;
        A += x + 20;
    }
    function modify1(uint x) public {
        A += x;
        A += x + 40;
    }
    function modify2(uint x) public {
        A += x;
        A += x + 60;
    }
    function modify3(uint x, uint y) public {
        A += x;
        A += x + 80;
        A *= y;
    }
}
contract ExampleMutatorInterface is ExampleInterface {
    function g(uint) external pure returns (uint _g_x);
}
contract ExampleContract {
    ExampleMutator example_mutator;
}

pragma solidity ^0.8.0;
contract ExampleContract {
    ExampleMutator example_mutator;
    address example_address;
    function exampleContract(ExampleMutator _example_mutator) public {
        example_mutator = _example_mutator;
        example_address = address(example_mutator);
    }
    function example_modify2(uint x) external {
        example_mutator.modify2(x);
    }
    function example_modify3(uint x, uint y) external {
        example_mutator.modify3(x, y);
    }
    function g() external pure returns (uint _g_x) {
        _g_x = example_mutator.g(x);
    }
}
contract ExampleMutatedContract is ExampleMutatorInterface, ExampleContract {
    constructor(TestLibLib.TestLibLibInterface _lib, uint _aValue, uint _bValue) public {
        A = _aValue;
        B
