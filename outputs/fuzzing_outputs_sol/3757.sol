pragma solidity ^0.8.0;
contract Example11 {
    event ExampleEvent(uint256 value);
    function example11() public {
        example12();
        emit ExampleEvent(1);
    }
    function example12() public {
        example13();
        emit ExampleEvent(2);
    }
    function example13() public {
        example14();
    }
    function example14() public {
        example15();
    }
    function example15() public {
        emit ExampleEvent(3);
    }
}
