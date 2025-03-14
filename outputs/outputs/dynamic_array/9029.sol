pragma solidity ^0.8.0;
contract SemanticSolidityArrayAbiConversionTests6C {
    function test(address[] memory input) public pure  {
        uint arrSize = input.length;
        address[] memory foo = new address[](arrSize + 1);
        uint idx = 0;
        for (uint i=0; i < arrSize; i++) {
            foo[idx++] = input[i];
        }
    }
}

pragma solidity ^0.8.0;
contract SemanticSolidityArrayAbiConversionTests6D {
    uint[] memory foo;
    uint maxElement = 6;
    uint idx;

    constructor() {
        uint idx = 0;
        foo = new uint[](maxElement);
        for (uint i = 0; i < maxElement; i++) {
            foo[i] = uint(3*idx + i);
            idx += 2;
        }
    }
    function setSize(uint _newMaxElement) public {
        uint[] memory newFoo;
        uint newMaxElement = _newMaxElement;
        if (foo.length == 0) {
            newFoo = new uint[](newMaxElement);
        } else {
            uint fooLen = foo.length;
            newFoo = new uint[](newMaxElement * 2);
            while (idx < fooLen) {
                newFoo[idx] = foo[idx++];
            }
        }
        foo = newFoo;
    }
    function test() public view  returns (uint){
        return foo.length;
    }
}

pragma solidity ^0.8.0;
contract SemanticSolidityArrayAbiConversionTests6E {
    uint[][] memory foo;
    constructor () {
        uint count = 12;
        foo = new uint[count][];
        for (uint i=0; i < count; i++) {
            foo[i] = new uint[2];
            uint idx = 0;
            for (uint j = 0; j < 2; j++) {
                foo[i][j] = uint(3*i + j);
                idx += 2;
            }
        }
    }
    function test(uint[] memory input) public view  returns (uint) {
        return foo.length;
    }
}

pragma solidity ^0.8.0;
contract SemanticSolidityArrayAbiConversionTests6F {
    address[][][] memory foo;
    constructor () {
        uint count = 12;
        foo
