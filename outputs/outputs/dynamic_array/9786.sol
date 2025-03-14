pragma solidity ^0.8.0;
contract SemanticTest {
    struct Data {
        uint x;
    }
    function fTest(Data memory d) public pure {
        uint y = d.x;
        d.x += 3;
        y = d.x;
    }
}
contract SemanticTest {
    struct Data {
        uint x;
    }
    function fTest(Data memory d) public pure {
        uint y;
        y = d.x;
        d.x += 3;
        y = d.x;
    }
}
contract SemanticTest {
    struct Data {
        uint x;
    }
    function fTest(Data memory d) public pure {
        uint y;
        y = d.x;
        uint _x = d.x;
        d.x += 3;
        y = d.x;
    }
}
contract SemanticTest {
    struct Data {
        uint x;
    }
    function fTest(Data memory d) public pure {
        uint y;
        y = d.x;
        y = _x;
        d.x += 3;
        y = d.x;
    }
}
contract SemanticTest {
    struct Data {
        uint[] _foo;
    }
    function fTest(Data memory d) public pure {
        uint[] memory foo0;
        d.x[foo0.length] += 2;
        foo0.length++;
        d.x.length++;
    }
}

contract SemanticTest {
    struct Data {
        uint[] _foo;
        uint y;
        uint z;
        uint w;
    }
    function fTest(Data memory d) public pure {
        uint[] memory foo0;
        d._foo.length += 10;
        d.y += 20;
        d.z = bar(30, 40);
        d.w = bar(50, 60);
    }
    function bar(uint _x, uint _y) public pure returns(uint) {
        return _x + _y;
    }
}
contract SemanticTest {
    struct Data {
        uint[] _foo;
        uint x;
    }
    function fTest(Data memory d) public pure {
        uint[] memory foo0;
        d._foo.length += 10;
        d.x += 20;
        d.x += 30;
        d.x += 40;
        d.
