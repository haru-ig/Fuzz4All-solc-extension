pragma solidity ^0.8.0;
interface E7I2
{
    function get() external;
}
contract E7S2
{
    address public test;
    constructor(address _test_) public {test = _test_;}
    function test1() public override returns (bool) {
        E7I2 test2 = E7I2(test);
        return test2.get();
    }
    function test2() public override returns (bool) {
        E7H2 test2 = E7H2(test);
        test = address(test2);
        return true;
    }
}
contract E7T2
{
    uint public counter=123;
    constructor(uint _x) public {counter=_x;}
    function set(uint _x) public returns (bool) {
        counter=_x;
        return true;
    }
    function multiplyAndLog(uint _x) public returns (bool) {
        uint t = counter * 2;
        counter = t;
        return true;
    }
}
contract E7C2
{
    uint public counter=123;
    uint constant public C=123;
    uint constant private D=123;
    uint public constant z=123;
    constructor(uint _x) public {counter=_x;}
    function set(uint _x) public returns (bool) {counter=_x;return true;}
    function multiplyAndLog(uint _x) public returns (bool) {
        uint t = counter * 2;
        counter = t;
        return true;
    }
}
contract E7U2
{
    uint public counter=123;
    using E7T2 for uint;
    constructor (uint x) public {
        counter = x;
    }
    function set(uint x) public returns (bool) {
        counter = x;
        return true;
    }
    function multiplyAndLog(uint x) public returns (bool) {
        uint t = counter * 3;
        counter = t;
        return true;
    }
}
contract E7W2
{
    uint public counter=123;
    event TestEvent(uint value);
    constructor (uint x) public {
        counter = x;
    }
    modifier onlyTest() {
        TestEvent(counter);
        _;
    }
    function set(uint x) public returns (bool) {
        counter = x;
        return true;
    }
    function multiplyAndLog(uint x) public returns (bool) {
        uint t = counter *
