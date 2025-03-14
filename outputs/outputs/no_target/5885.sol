pragma solidity ^0.8.0;
contract C {
    function bar(function foo() pure public returns (mapping(uint8 => uint8)) b) {
        return b;
    }
}


pragma solidity ^0.8.1;
contract C
{
    function bar(function foo() pure virtual public returns (mapping(uint8 => uint8)) b) {
        return b;
    }
}

contract Program
{
    function call(string memory source) public returns (string memory result) {
        assembly {
            let f := mload(source)
            sstore(source, calldataload(f))
            result := mload(source)
        }
    }
}
