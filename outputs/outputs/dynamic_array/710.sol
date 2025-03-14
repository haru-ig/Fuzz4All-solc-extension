pragma solidity ^0.8.0;
contract test275x extends test274 {
    function test() public returns (bool) {
        uint[] memory b = [1,2,3,4,5,6,7,8];
        if (a.length == 5) a[998] = 2;
        return false;
    }
}

pragma solidity ^0.8.0;
contract test276 {
    constructor() public payable {
    }
    function test() public {
        a[998] = 9;
    }
}

pragma solidity ^0.8.0;
contract test277 {
    contract a {
        constructor() public {
        }
        event e() external;
        function f() public returns (uint32) {
            emit e();
            return 11;
        }
    }
    constructor() public deploy {
    }
    a a_;
    function test() public returns (bool) {
        a_.f();
        return false;
    }
}

pragma solidity ^0.8.0;
contract test278x {
    constructor() public deployable {
    }
    function test1() public {
        require(address(0)!= address(this), "Failed 1");
    }
    function test2() public returns (uint256) {
        return 11;
    }
}

pragma solidity ^0.8.0;
contract test279x {
    constructor() {
    }
    function test() public {
        emit e(contract(0x0));
    }
    event e(address payable _dummy);
}

pragma solidity ^0.8.9;
contract a {
    function f() public pure virtual returns (uint256);
}
