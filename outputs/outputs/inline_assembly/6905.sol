pragma solidity ^0.8.0;
contract OptimizelyExample75 {
    struct MyContract {
        uint index;
    }

    uint public myCounter;
    mapping(uint => uint) public myMapping;

    function setMyCounter(uint _myCounter) public {
        myCounter = _myCounter;
    }

    function incrementMyCounter() public {
        myCounter++;
    }

    function incrementMyCounterFromMapping(uint _index) public {
        myMapping[_index]++;
    }
}
contract OptimizelyExample76 {
    struct MyContract {
        uint index;
    }

    uint index;
    mapping(uint => uint) myMapping;

    constructor(uint _index) public {
        index = _index;
    }

    function setMyCounter(uint _myCounter) public {
        myMapping[index]++;
    }

    function incrementMyCounter() public {
        myMapping[index]++;
    }

    function incrementMyCounterFromMapping(uint _index) public {
        myMapping[index]++;
    }
}
contract OptimizelyExample77 {
    struct MyContract {
        uint index;
    }

    uint constant myCounter = 3;
    uint public myIndex;
    uint constant myIndex2 = 4;

    constructor(uint _index, uint _otherIndex) public {
        myCounter = _index;
        myIndex = _index;
        myIndex2 = _otherIndex;
    }

    function incrementMyCounterAndMyIndex(bool forceIncrement) public {
        myCounter++;
        myIndex = myIndex2;
        if (forceIncrement) myIndex++;
    }
}
contract OptimizelyExample78 {
    uint constant myIndex = 4;
    address constant myConstantAddress = 0x5aa081B5719647742cE5ECa11C5EbE3c9B849D19;

    struct MyContract {
        uint index;
        bool constantMyAttribute;
    }

    MyContract public myContract;

    constructor(uint _myIndex) public {
        myIndex = _myIndex;
    }

    function setMyCounter(uint _myIndex) public {
        myIndex222 = _myIndex;
        myIndex = _myIndex + 20;
    }
}
contract OptimizelyExample84 {
    uint constant myCounter = 3;
    address constant myConstantAddress = 0x55AaBaa081B5719647742Ce5EcA11C5EbE3d19;

    uint public myIndex;

    constructor() public {
        myIndex = 3;
    }

    function incrementMyCounter(bool _myIndex) public {
        myCounter = myCounter + 1;
    }

    function incrementMyIndexAndConstantAddress() public {
        myIndex = myIndex + 1;
        myConstantAddress = myConstantAddress.add(1);
    }
