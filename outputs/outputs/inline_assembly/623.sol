pragma solidity ^0.8.0;
contract Simple {
    function testMethod() public pure {



        Simple(msg.sender).testMethod();
        Intra(msg.sender).testMethod();
        Another(msg.sender).testMethod();
        Interior(msg.sender).testMethod();
    }
}

contract Simple {
    bool public boolVal;
    bytes1 public bytesVal;

    function testMethod() public pure {
        boolVal = false;
        bytesVal = '';
    }
}
contract Another {
    bool public boolVal;
    bytes1 public bytesVal;

    function testMethod() public pure {
        boolVal = true;
        bytesVal = bytes1(0xF0A0FF);
    }
}
contract Interior {
    bool public boolVal;
    bytes1 public bytesVal;

    function testMethod() public pure {
        boolVal = false;
        bytesVal = bytes1(0xD01FF);
    }
}
contract Intra {
    bool public boolVal;
    bytes1 public bytesVal;

    function testMethod() public pure {
        boolVal = true;
        bytesVal = bytes1(0xF0A0FF);
    }
}
interface SimpleInterface {
    function testMethod() external pure;
}
interface AnotherInterface {
    function testMethod() external pure;
}
interface InteriorInterface {
    function testMethod() external pure;
}
interface IntraInterface {
    function testMethod() external pure;
}
contract SimpleConsumer {
    SimpleInterface simpleVal;
    AnotherInterface anotherVal;
    InteriorInterface interiorVal;
    IntraInterface intraVal;
}
contract SimpleCaller {
    SimpleConsumer simpleCon;

    function testMethod() public pure {


        if (bool(simpleCon.simpleVal.testMethod())) {}

        boolVal = false;

        simpleCon.simpleVal.testMethod();


        boolVal = true;
        bytesVal = bytes1(0xD01FF);
    }

    function
