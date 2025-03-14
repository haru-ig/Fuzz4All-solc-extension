pragma solidity ^0.8.0;
contract InlineAssembly2{

    string memory text;

    function test() public pure returns(string memory text) {
        assembly {
            text := mload(0)
            mstore(0, text)
            { mstore(0, add(text, 3))      }
            { mstore(0, add(text, 5))      }
        }
        text = 'hello';
    }
}


pragma solidity ^0.8.0;
contract InlineAssembly1{

    bytes memory text;

    function test() public pure returns(string memory text) {
        assembly {
            text := mload(0)
            text := add(text, 5)
            text := sub(text, 3)
        }
        text = 'hello';
    }
}
