pragma solidity ^0.8.0;
contract SemanticsEquivalence24x2 {
    uint constant x1 = 1;
    uint constant x2 = 2;
    function bar() public pure {
        assembly {
            let r := uint(add(x1, x2))
            mstore(add(x2, 0x20), mload(x1))
            mstore(add(x1, 0x20), r)
        }
    }
}
pragma solidity ^0.8.0;
contract SemanticsEquivalence24x3 {
    uint constant x1 = 1;
    uint constant x2 = 2;
    function bar() public pure {
        assembly {
            let r := uint(add(x1, x2))
            r := mloadadd(add(x2, 0x20), r)
            mstore(add(x2, 0x20), r)
            r := mloadadd(add(x1, 0x20), r)
            mstore(add(x1, 0x20), r)
        }
    }
}
pragma solidity ^0.8.0;
contract SemanticsEquivalence24x4 {
    uint constant x1 = 1;
    uint constant x2 = 2;
    function bar() public pure {
        assembly {
            let r := add(x1, x2)
            r := mload(add(x2, 0x20))
            mstore(add(x2, 0x20), r)
            r := mload(add(x1, 0x20))
            mstore(add(x1, 0x20), r)
        }
    }
}<jupyter_output><empty_output><jupyter_text>Using a small contract<jupyter_code>
pragma solidity ^0.8.0;
interface Ownable {



    modifier onlyOwner() {
        require(msg.sender == owner(), "Caller is not owner");
        _;
    }


    modifier onlyUser(address addr) {
        require(msg.sender == addr, "Caller is not addr");
        _;
    }

    address public owner;
