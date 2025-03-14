pragma solidity ^0.8.0;
interface IExample {
    function exampleMethod() external;
    function exampleMethod(uint) external;
}

contract Example {

    IExample internal _iDummy;
    event Emitted(uint _value);
    constructor(IExample iDummy) {
        _iDummy = iDummy;
        emit Emitted(_iDummy.exampleMethod());
    }


    fallback () external payable {}
    fallback (uint) external payable {}
    fallback (bytes1) external payable {}

    receive () payable external override {}

    receive () payable external{}
    receive () payable external {}
}
