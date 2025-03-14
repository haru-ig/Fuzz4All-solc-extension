pragma solidity ^0.8.0;
contract C {
    function d() public {
        uint256[] memory e;
    }
}


pragma solidity ^0.8.0;
contract B {
    uint256[] memory b;
    constructor() public {
        b;
    }
}

pragma solidity ^0.8.0;
contract A {
    address[] memory a;
    modifier b() {
        a;
        delete a;
    }
    function c() public b {
    }
}

pragma solidity ^0.8.0;
contract G2 {
    modifier d() {
        uint256[] memory x;
        return ;
    }
    function f(uint256[] memory k) public view d {
    }
}

pragma solidity ^0.8.0;
contract D2 {
    uint256[] memory x;
    function f() public {
        x;
        if (x[1] < 3)
            x.push(2);
        else
            x.push(16);
    }
}

pragma solidity ^0.8.0;
contract C3 {
    uint256[] memory x;
    function f() public {
        x.push(2);
