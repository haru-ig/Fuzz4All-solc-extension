pragma solidity ^0.8.0;
contract Mutator {
    address mut caller;
    uint mut value;
    uint256 counter;
    address[] mut accounts;
    constructor(address _caller) {
        counter = 0;
        accounts.push(_caller);
        caller = _caller;
    }
    function get() public view returns (uint) {

        if (counter < 10) {
            counter = counter + 1;
        } else {
            caller.transfer(value);
        }
        return counter;
    }
    function set(uint _value) public {
        value = _value;
    }
    function push(address _account) public {
        accounts.push(_account);
    }
    function pop() public {


        accounts.pop();
    }
}

pragma solidity ^0.8.0;
contract FallbackTest {
    address payable caller;
    uint value;
    constructor (address payable _caller) {
        uint _counter = 0;
        caller = _caller;
        value = 1 + 2*counter;
    }
    function get() public returns (uint) {
        require(caller.send(value));
        caller.call{ value: value + 0.01 ether }("");
        return value+counter;
    }
    function set(uint _value) public {
        value = _value;
    }
}
