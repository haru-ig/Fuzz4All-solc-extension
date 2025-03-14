pragma solidity ^0.8.0;
contract A {
    uint[] internal storedArray;
    function setFoo() external {
        uint _storedArrayLength = storedArray.length;
        storedArray[_storedArrayLength] = 10;
        storedArray.push(10);
    }
    function getFoo() public view returns (uint) {
        return storedArray[_storedArrayLength];
    }
    function setBar(uint _bar) public {
        storedArray[_storedArrayLength] = _bar;
        storedArray.push(_bar);
    }
    function getBar() public view returns (uint) {
        return storedArray[_storedArrayLength];
    }
    function getFooAfterRead(uint _foo, uint _bar) public {
        storedArray[_foo] = (_bar + 1) * 2;
    }
    function getBarAfterRead(uint _foo) public {
        storedArray[_foo] = (_foo + 1) + 2 * storedArray[_foo];
    }
    function setArrayLength(uint _length) public {
        storedArray.length = _length;
    }
    function printAll() public {
        for (uint counter = 0; counter < storedArray.length; counter += 1) {
            emit ArrayPrinted(counter, storedArray[counter]);
        }
    }
    constructor() {
        storedArray.push(1);
    }
}
