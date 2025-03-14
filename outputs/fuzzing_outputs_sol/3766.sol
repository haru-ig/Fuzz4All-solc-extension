pragma solidity ^0.8.0;
contract Example14 {
    event ExampleEvent(uint256 value);
    constructor() public payable {
    }
    function example14() public payable {

      fallback();
    }
}
contract Example15 {
    event ExampleEvent(uint256 value);
    constructor() public payable {

        fallback();
    }
    function example15() public payable {

        fallback();
    }
}

pragma solidity ^0.8.0;
contract Example16 {
    event ExampleEvent(uint256 value);
    constructor() public payable {
    }
    function example16() public payable {
        uint256 i;
        assembly { i := _; }

        fallback();
    }
}
