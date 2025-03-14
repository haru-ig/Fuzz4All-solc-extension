pragma solidity ^0.8.0;
contract MutatedClass {
    ExampleClass[] objects;
    uint _size;
    address[] _contracts;
    constructor(ExampleClass[] objects) public {
        _size = objects.length;
        _contracts = new address[](_size);
        for (uint i = 0; i < _size; ++i)
            _contracts[i] = objects[i].address;
        objects = new ExampleClass[](_size);
    }
    function mutator(ExampleClass object, uint index) public {
        object.increment();
    }
    function mutators() public {
        uint j;
        for (uint i = 0; i < _size; ++i) {
            objects[i].increment();
            objects[i].increment();
            objects[i].increment();
            if (i == 2)
                j = objects[i].address.value;
        }
    }
    function mutators2(ExampleClass[] objects) public {
        uint j;
        for (uint i = 0; i < objects.length; ++i) {
            objects[i].increment();
            objects[i].increment();
            objects[i].increment();
            objects[i].increment();
            objects[i].increment();
            if (i == 2)
                j = objects[i].address.value;
        }
    }
}
