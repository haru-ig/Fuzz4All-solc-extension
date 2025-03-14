pragma solidity ^0.8.0;
contract ModsExample {
    address payable private owner;
    event Log(address indexed from, uint amount);
    constructor () {
        owner = msg.sender;
        Log(owner, msg.value);
    }
    function test(uint128 _value) public {

        uint64 testValue = uint64(_value);
        emit Log(owner, msg.value);
    }
    function getValue() public view returns (uint64) {
        return 67;
    }
}

pragma solidity ^0.8.0;
contract MultiExample {
    event Log(uint amount);
    event Log1(address payable from, uint amount);
    uint64 private myNumber;
    constructor (uint64 _initialNumber) public {
        myNumber = _initialNumber;
    }
    function getNumber() public view returns(uint) {
        return myNumber;
    }
    function getValue() public view returns(uint64) {
        uint64 testValue = uint64(myNumber);
        return testValue;
    }
    function test(uint128 _value) public {

        address payable from = payable(msg.sender);
        address payable fromAddressForLog1;
        emit Log(msg.value);
        fromAddressForLog1 = from;
        emit Log1(fromAddressForLog1, msg.value);
        uint64 returnValue = uint64(_value);
        myNumber += _value;
    }
}

pragma solidity ^0.8.0;
contract ContractTest {
    function test() public {
        MutatedExample example = new MutatedExample();
        example.example(2);
        uint64 myNumber = example.getValue();
        emit Log(myNumber);
        MulitExample multi = new MulitExample(6);
        uint64 newValue = multi.getValue();
        emit Log3(newValue);
        multi.test(3);
        uint64 valueAfterTest = multi.getNumber();
        emit Log4(valueAfterTest);
    }
    function Log(uint value) public pure {

        log("test", value);
    }
    function Log3(uint value) public pure {

        log3("test", value);
    }
    function Log4(uint value) public pure {

        log4("test", value);
    }
    function log3(string memory _prefix, uint value) private pure  {
        logs
