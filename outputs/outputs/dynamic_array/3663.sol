pragma solidity ^0.8.0;
contract A {
    uint[] public arr;
    constructor() {
        for(uint i=0; i<100; i){
            arr.push(123);
        }
    }
}

pragma solidity >=0.5.0;
contract C {
	address test;
    function testContractCreation () public returns (address result)  {
        A a = new A();
        result = a;
        return a;
    }
    function testGetters() public view returns (uint256 p, uint256 x, uint) {
        uint256 p1 = 123;
        result = p1;
        p = p1;
        x = 123;
        return p,x,p;
    }
    function testSetters() public returns (uint) {
        p = 123;
        x = 123;
        p1 = p;
        x1 = x;
        uint result = settersTest(testContractCreation());
        return result;
    }
    function settersTest(address r) public returns (uint ) {
        test = r;
        if(test.send(1125) < 1125) {
            p = 123;
            x = 123;
        }
        uint20 i = 123;
        uint256 b;
        uint42 z = 1;
        uint256 c = 42;
        mapping(uint256=>string) storage s;
        assembly {
            div(123, 42)
        }
        p = 123;
        uint256 arr[] = new uint25
