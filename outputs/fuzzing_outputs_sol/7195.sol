pragma solidity ^0.8.0;
contract Example4 {
    address payable valueFromCaller;
    modifier onlyFromCaller {
        require(msg.sender == valueFromCaller);
        _;
    }
    function example4() public onlyFromCaller {
        valueFromCaller.transfer(address(this).balance);
    }
}

pragma solidity ^0.8.0;
contract Caller {
    Example4 constant example = new Example4();
    address payable receiver;
    constructor(address payable x) {
        receiver = x;
    }
    function () external payable {
        example.example4();
        receiver.transfer(msg.value);
    }
}

pragma solidity ^0.8.0;
contract Caller {
    Example4 constant example = new Example4();
    address payable receiver;
    constructor(address payable x) {
        receiver = x;
    }
    function () external payable {
        example
          .example4()
          .value(0.2 ether)
        ;
        receiver.transfer(address(this).balance);
    }
}
