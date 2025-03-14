pragma solidity ^0.8.0;
contract New {
    function getValue(uint256 index) public pure returns (uint256) {
        _;
        return value;
    }
    uint256 internal value;
}
pragma solidity ^0.8.0;
contract New2 {
    function getValue(uint256 index) public pure returns (uint256) {
        _;
        New memory mem;
        while (index > 0) {
            mem.value /= 10;
            index--;
        }
        return mem.value;
    }
}
pragma solidity ^0.8.0;

pragma solidity ^0.8.0;
contract Parent {
    function test() public pure {
        require(test());
    }
}
pragma solidity ^0.8.0;
contract Sub2 is Parent {
    function test() public pure returns (bool) {
        Parent storage parent = (Parent()) parent;
        functionTest();
    }
}
pragma solidity ^0.8.0;
contract Sub3 is Parent {
    function test() public pure returns (bool) {
        Parent storage parent = (Parent()) parent;
        Parent[] memory parents = new Parent[](1);
        parents[0] = (Parent()) parent;
        functionTest();
    }
}
pragma solidity ^0.8.0;
contract Child is Parent {
    function test() public pure returns (bool) {
        Parent memory parent = (Parent()) parent;
        Parent[] memory parents = new Parent[](2);
        parents[0] = (Parent()) parent;
        parents[1] = (Parent()) parent;
        functionTest();
    }
}
pragma solidity ^0.8.0;
contract Test {
    function test() public returns (bool) {
        require(test2(true));
        return true;
    }
    function test2(bool a) public returns (bool) {
        require(!a);
        return true;
    }
}
pragma solidity ^0.8.0;
contract Test2 {
    function test() public pure returns (bool) {
        Test test;
        Test secondTest = test;
        require(test.test());
        require(test2(true));
        return true;
    }
    function test2(bool a) public pure returns (bool) {
        require(a && test());
        return true;
    }
}
pragma solidity ^0.8.0;
contract Test3 {
    function test() public pure returns (bool) {
        Test test;
        Test secondTest = test;
        require(test.test());
        require(!test2(false));
        return true;
    }
    function test2(bool a) public pure returns (bool) {
        require(a);
        require(test());
        return true;
    }
}
pragma solidity ^0.8.0
