pragma solidity ^0.8.0;
contract Test22 {
    address public foo;
    function f(address payable a) public {
        unchecked {
        }
        foo = a;
    }
}

pragma solidity ^0.8.0;
contract Test23 {
    address public foo;
    bytes public foobytes;
    function setfoo(address a) public payable {
        unchecked {
        }
        foo = a;
    }
    function setfoobytes(bytes memory b) public payable {
        unchecked {
        }
        foobytes = b;
    }
}

pragma solidity ^0.8.0;
contract Test24 {
    address[] public foo;
    bytes[] public foobytes;
    bytes32[] public foobools;

    function setfoo(address a) public payable {
        unchecked {
        }
        foo.push(a);
    }
    function setfoobytes(bytes memory b) public payable {
        unchecked {
        }
        foobytes.push(b);
    }
    function setfoobools(bytes32 b) public payable {
        unchecked {
        }
        foobools.push(b);
    }
}
