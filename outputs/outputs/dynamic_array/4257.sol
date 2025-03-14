pragma solidity ^0.8.0;

contract G {
    address x;
    uint8[] internal array;
    constructor() public {
        array = [1, 2, 3];
        x = address(0);
    }

    function addOne() public {
        array.push(4);
        x = address(0);
    }

    function clear() public {
        array.length = 0;
        x = address(0);
    }
}

pragma solidity ^0.8.0;
contract G {
    address x;
    uint8[] foo;
    uint8[] bar;
    arrayInitializer(foo, bar);
}

pragma solidity ^0.8.0;

contract G {
    address x;
    uint8[][][] baz;
    arrayInitializer(foo, bar, baz);
}
