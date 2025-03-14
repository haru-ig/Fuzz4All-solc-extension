pragma solidity ^0.8.0;
contract Example1 {
    address public valueFromCaller;
    modifier onlyFromCaller {
        require(msg.sender == valueFromCaller, "msg.sender equal to valueFromCaller");

        _;
    }
    function example1() public onlyFromCaller {
        valueFromCaller = msg.sender;
    }
}
pragma solidity ^0.8.0;
contract Example2 {
    modifier onlyFromCaller {
        require(msg.sender!= valueFromCaller, "msg.sender is not valueFromCaller");

        _;
    }
    address public valueFromCaller;
    function example2() public onlyFromCaller {
        valueFromCaller = msg.sender;
    }
}
pragma solidity ^0.8.0;
contract Example3 {
    modifier onlyFromCaller {
        require(msg.value == 0 || msg.sender == valueFromCaller, "Invalid value");

        _;
    }
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
}
