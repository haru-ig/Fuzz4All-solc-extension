pragma solidity ^0.8.0;
contract MutateExample {

    constructor() {}

    modifier mutated(uint8 _data) {
        data = _data;
        _;
    }

    function set(uint8 _data) public {
        mutated(_data);
    }

    function get() public view returns (uint8) {
        return data;
    }
}

pragma solidity ^0.8.0;
contract MutateExample {

    MutateExample public parent;
    constructor(MutateExample _parent) {
        parent = _parent;
    }

    modifier mutated(uint8 _data) {
        data = _data;
        _;
    }

    function set(uint8 _data) public {
        mutated(_data);
    }

    function get() public view returns (uint8) {
        return data;
    }
}

pragma solidity ^0.8.0;
contract MutateExample {

    MutateExample public parent;
    MutateExample public child;
    uint8 public data;
    constructor(MutateExample _parent, MutateExample _child) {
        parent = _parent;
        child = _child;
    }

    modifier mutated(uint8 _data) {
        data = _data;
        _;
    }

    function set(uint8 _data) public {
        mutated(_data);
    }

    function get() public view returns (uint8) {
        return data;
    }
}
