pragma solidity ^0.8.0;
contract Example4 {
    address public valueFromCaller;
    modifier onlyFromCaller {
        require(msg.sender == valueFromCaller);
        _;
    }
    function example4() public onlyFromCaller {}
}

pragma solidity ^0.8.0;
contract Example4 {
    address public valueFromCaller;
    modifier onlyFromCaller {
        require(msg.sender == valueFromCaller);
        _;
    }
    function example4() public onlyFromCaller {
        valueFromCaller = msg.sender;
    }
}

pragma solidity ^0.8.0;
contract Example5 {
    string public example6;
    constructor() {
        example6 = "Hello World!";
    }
    function example5() public {
        assert(example6 == "Hello World!");
    }
}

pragma solidity ^0.8.0;
contract Example5 {
    string public example6;
    constructor() {
        example6 = "Hello World!";
    }
    function example5() public {

        string memory hello = "Hello World!";
        assert(hello == example6);
    }
}
