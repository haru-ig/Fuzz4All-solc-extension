pragma solidity ^0.8.0;
contract MutatedDynamicArrays13 {
    uint256[] public elements;
    constructor() public {
        elements = new uint256[](6);
        elements[3] = 150;
        elements[2] = 150;
        elements[1] = 150;
        elements[0] = 150;
        elements[4] = 260;
        elements[5] = 300;
    }
    function use() public {
        delete elements[2];
    }
}

pragma solidity ^0.8.0;
contract MutatedDynamicArrays14 {
    uint256[] public elements;
    constructor() public {
        elements = nev256 = new uint256[](6);
        elements[3] = 150;
        elements[2] = 150;
        elements[1] = 150;
        elements[0] = 150;
        elements[4] = 260;
        elements[5] = 300;
        elements.push(0);
    }
    function use() public {
        elements = nelements + [0];
    }
}
