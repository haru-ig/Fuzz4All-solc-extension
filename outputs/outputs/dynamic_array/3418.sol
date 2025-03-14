pragma solidity ^0.8.0;
contract B {
    uint public v;
    uint[4] public array;
    constructor() {
        array[3]=1;
        v=1;
    }
    function pushTest() public {
        array.push(2);
        v=2;
    }
}

pragma solidity ^0.9.0;
contract B {
    uint[] public array;
    uint public v;
    constructor() {
        array.push(3);
        v=3;
    }
    function pushTest() public {
        array.push(2);
        v=2;
    }
}

pragma solidity >0.5.7 <0.8.0;
contract B {
    uint public v;
    uint[] public array;
    constructor() {
        array.push(3);
        v=3;
    }
    function pushTest() public {
        array.push(2);
        v=2;
    }
}
contract B0 {
    uint[] public array;
    uint public v;
    constructor() {
        v=3;
    }
    function pushTest() public {
        array.push(2);
        v=2;
    }
}
contract B1 {
    uint[] public array;
    uint public v;
    constructor() {
        array[3]=1;
        v=3;
    }
    function pushTest() public {
        array.push(2);
        v=2;
    }
}
contract B2 {
    uint[] public array;
    uint public v;
    constructor() {
        array.push(1);
        v=3;
    }
    function pushTest() public {
        array.push(2);
        v=2;
    }
}
contract B3 {
    uint[] public array;
    uint public v;
    constructor() {
        v=3;
        array.push(2);
    }
    function pushTest() public {
        array.push(3);
        v=2;
    }
}
contract B4 {
    uint[] public array;
    uint public v;
    constructor() {
        array.push(2);
        v=2;
    }
    function pushTest() public {
        array[10]=1;
        v=2;
    }
}
contract B5 {
    uint[] public array;
    uint public v;
    constructor(uint _v) {
        v=_v;
    }
    function pushTest(uint _num) public {
        require(_num >
