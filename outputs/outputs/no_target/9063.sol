pragma solidity ^0.8.0;
contract Mutators_v10_v3_2 {
    uint public immutable value_v10vb;
    function equivalent() public {
    }
    constructor() {
    }
}
contract mutators_v10_v3_2 {
    uint public immutable value_v10vb;
    constructor() {
    }
}

contract Mutators_v10_v4_2 {
    uint public immutable value_v10vb;
    uint private immutable value_v10va;
    function equivalent() public {
    }
    constructor(uint _v10va) {
    }
}
contract mutators_v10_v4_2 {
    uint public immutable value_v10vb;
    uint private immutable value_v10va;
    constructor(uint _v10va) {
    }
}
contract mutators_v10_v5_2 {
    uint public immutable value_v10vb;
    uint _v10vc;
    function equivalent() public {
    }
    constructor(uint _v10vc) {
        _v10vc;
    }
}
contract mutators_v10_v5_2 {
    uint public immutable value_v10vb;
    uint constant public _v10vc = 4;
    constructor() {
    }
}

contract Mutators_v12_v1 {
    uint public immutable value_v12;
    function equivalent() public {
    }
}
contract mutators_v12_v1 {
    constructor() {
    }
}
contract mutators_v12_v2 {
    uint public immutable value_v12;
    uint private immutable value_v14;
    function equivalent() public {
    }
    constructor(uint _v14) {
        _v14;
    }
}
contract mutators_v12_v2 {
    uint public immutable value_v12;
    uint private immutable value_v14;
    constructor(uint _v14) {
        _v14;
    }
}
