pragma solidity ^0.8.0;
contract OptimizelyExample1 {
    address payable public payableContract;
    bool public isCalled;
    constructor(address payable c) {
        isCalled = true;
    }
    function test() public {
        isCalled = false;
        payableContract.sendValue{value : 23}();
        payableContract = payable(address(this));
    }
    function test__0( ) public {
        isCalled = false;
        payableContract.call.value{value : 23}();
        payableContract = payable(address(this));
    }
    function test____( ) public {
        isCalled = false;
        payableContract.call( );
        payableContract = payable(address(this));
    }
    function test_0( ) public {
        isCalled = false;
