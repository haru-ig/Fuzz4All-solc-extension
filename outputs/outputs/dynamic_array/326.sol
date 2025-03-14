pragma solidity ^0.8.0;
contract C0 {
    uint256[][] public arr;
    function f() public {
        arr.push([42]);
        uint256[][] memory b = arr;
    }
}
contract C1 {
    uint256[3][] public arr;
    function f() public {
        arr.push([42]);
        uint256[3][] memory b = arr;
    }
}
contract C2 {
    uint256[53][] public arr;
    function f() public {
        arr.push([42]);
        uint256[53][] memory b = arr;
    }
}
contract C3 {
    uint256[208][] public arr;
    function f() public {
        arr.push([42]);
        uint256[208][] memory b = arr;
    }
}
contract C4 {
    uint256[220][1024] public arr;
    function f() public {
        arr.push([42]);
        uint256[220][1024] memory b = arr;
    }
}
contract C5 {
    uint256[126336] public arr;
    function f() public {
        arr.push([42]);
        uint256[126336] memory b = arr;
    }
}
contract C6 {
    uint256[90000][1024] public arr;
    function f() public {
        arr.push([42]);
        uint256[90000][1024] memory b = arr;
    }
}
contract C7 {
    uint256[1048576] public arr;
    function f() public {
        arr.push([42]);
        uint256[1048576] memory b = arr;
    }
}
contract C8 {
    uint256[3402823466385286000] public arr;
    function f() public {
        arr.push([42]);
        uint256[3402823466385286000] memory b = arr;
    }
}
