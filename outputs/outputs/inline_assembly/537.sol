pragma solidity ^0.8.0;
contract InlineAssemblySemanticEquivalent2 {
    function testMethod() public pure returns(bytes32) {
        bytes32 x;
        mstore(0, 1);
        mstore(32, 2);
        assembly{
            x := mload(0)
        }
        return x;
    }
}

pragma solidity ^0.8.0;
contract SolidityEquivalent {
    contract A {
        function g() private pure returns(bool) {
            return false;
        }
        function a() public pure returns(bool) {
            return g();
        }
        function testMethod() public pure returns(bytes32) {
            bytes memory test = "Test";
            assembly {
                if a() {
                    mstore(0, test)
                }
            }
            return bytes32(mload(0));
        }
    }
    contract B {
        function g() private pure returns(bool) {
            return false;
        }
        function b() public pure returns(bool) {
            return g();
        }
        function testMethod() public pure returns(bytes32) {
            bytes memory test = "Test";
            assembly {
                if b() {
                    mstore(0, test)
                }
            }
            return bytes32(mload(0));
        }
    }
    function c() public pure returns(bool) {
        A a;
        B b;
        return bytes32(a.testMethod().testMethod()) == bytes32(b.testMethod().testMethod());
    }
}

pragma solidity ^0.8.0;
contract SolidityEquivalent2 {
    contract A {
        bytes public data;
        function f() private pure returns(bool) {
            return false;
        }
        function a() public pure returns(bool) {
            return f();
        }
        function testMethod() public pure returns(bytes32) {
            data := uint8(0);
            assembly {
                if a() {
                    data := mload(60)
                }
            }
            return data;
        }
    }
    contract B {
        bytes public data;
        function f() private pure returns(bool) {
            return false;
        }
        function b() public pure returns(bool) {
            return f();
        }
        function testMethod() public pure returns(bytes32) {
            data := uint8(1);
            assembly {
                if b() {
                    data := mload(60)
                }
            }
            return data;
        }
