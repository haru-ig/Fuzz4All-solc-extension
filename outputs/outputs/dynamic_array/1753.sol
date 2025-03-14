pragma solidity ^0.8.0;
contract MutatedDynamicArrays {
    struct Foo {
        uint256[] public values;
    }
    constructor() {
        elementsInit(15);
    }
    function elementsInit(uint256 i) private {
        for (uint256 j=0; j<i; j++){
            Foo storage foo = memoryFoo();
            foo.values.push(0);
        }
    }
    function memoryFoo() private returns (Foo memory) {
        Foo memory foo = Foo({values: new uint256[](4)});
        for (uint256 i=0; i<foo.values.length; i++){
            foo.values[i] = 1;
        }
        return foo;
    }
    function add() public {
        uint256 element = elementsInitial.pop();
        elements += element;
    }
}

pragma solidity ^0.8.0;
contract DynamicArrays {
    function add(uint256 a, uint256 b) public {
        elements = elements + a + b;
    }
}
