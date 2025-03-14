pragma solidity ^0.8.0;
interface ExampleContract {
    function testFunction(uint, uint) public returns (uint256);
}

pragma solidity ^0.8.0;
contract Test {
    bool _shouldPrint = false;
    function getVariable(bool shouldPrint) public returns(bool) {
        _shouldPrint = shouldPrint;
        return _shouldPrint;
    }
    modifier checkTrue {
        require(_shouldPrint);
        _;
    }

}

pragma solidity ^0.8.0;
contract Test1 is Test,ExampleInterface {
    function testFunction(uint, uint) public checkTrue returns (uint256) {}
}

pragma solidity ^0.8.0;
struct ExampleStruct2 {
    uint256 num;
}
contract Test2 is Test,ExampleInterface {
    void foo(ExampleStruct2 memory) public;

    function testFunction(uint, uint) public checkTrue returns (uint256) {}
}

pragma solidity ^0.8.0;
contract Test3 is Test,ExampleInterface {
    constructor() {

    }

    function testFunction(uint, uint) public checkTrue returns (uint256) {}
}
