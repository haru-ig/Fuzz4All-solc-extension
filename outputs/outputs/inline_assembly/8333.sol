pragma solidity ^0.8.0;
library MutateAssembly9 {
    function test() public pure {
        string memory e = "1";
        string memory newE = "0x0";
        assembly {
            let ePtr := mload(0x0)
            newE := and(ePtr, ePtr)
            mstore(0x0, newE)
        }
    }
}

pragma solidity ^0.8.0;
contract MutateAssembly10 {
    uint a;
    modifier changeA() {
        a = 1;
        _;
    }
    function test() public changeA {
        require(a == 1, "");
    }
}

pragma solidity ^0.8.0;
library MutateAssembly11 {
    uint a;
    uint b;
    modifier changeA() {
        a = 1;
        _;
    }
    modifier changeB() {
        b = 1;
        _;
    }
    function test() public changeA
    changeB
    {
        require(a == 1, "a == 0");
    }
    function resetValues() public
    changeA
    changeB
    {
        a = 0;
        b = 0;
    }
}

pragma solidity ^0.8.0;
library MutateAssembly12 {
    uint a;
    uint b;
    modifier changeA() {
        a = 1;
        _;
    }
    modifier changeB() {
        b = 1;
        _;
    }
    function test1() public changeA {
        a = a + 1;
        b = b + 1;
        require(a == 1 && b == 2, "a - b");
    }
    function test2() public changeB {
        a = a + 1;
        b = b + 1;
        require(b == 2 && a == 3, "a - b");
    }
}

pragma solidity ^0.8.0;
contract MutateAssembly13 {
    uint a;
    uint b;
    modifier changeA() {
        a = 1;
        _;
    }
    modifier changeB() {
        b = 1;
        _;
    }
    function test() public changeA changeB {
        require(a == 1 && b == 2, "a -
