pragma solidity ^0.8.0;
contract HelloWorld {

    modifier isInitializedFunction() {
        helloWorld();
        _;
    }

    string helloWorld;
    function sayHelloWorld() public returns(string memory){
        return helloWorld;
    }
    function initialize() public isInitializedFunction
    {
        helloWorld = "<NAME>";
    }
    function setHelloWorld(string memory value) public returns(bool) {
        helloWorld = value;
        return true;
    }
}
