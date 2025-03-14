pragma solidity ^0.8.0;
contract C {
    uint256[] public s1;
    constructor() public {
        s1.push(1);
    }
    function f(uint256[] memory x) public {
        s1.push(1);
    }
}

pragma solidity ^0.8.0;
contract C {
    uint256[] public s1;
    constructor() public {
        s1.push(1);
    }
    function f(uint256[] memory x) public {

        uint256[] memory f1 = new uint256[](2);
        f1[0] = 1;
        f1[1] = 2;
        f1 = x;
        s1 = f1;
    }
    function g() public {
        s1.push(1);
    }
}
