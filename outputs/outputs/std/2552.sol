pragma solidity ^0.8.0;
contract Mutate {
    HelloWorld internal h;
    uint public valueValue;
    constructor () {
        h = HelloWorld(0xFd950384aE17347AbA149d4A9D3E77B499498728);
    }
    function modify(uint valueValue) public {
        h.multiplyByConstantValue(valueValue);
    }
}
