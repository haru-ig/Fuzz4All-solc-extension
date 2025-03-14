pragma solidity ^0.8.0;
contract InlineAssembly7 {
    function test(string memory s) public {
        assembly {
            let ptr := add(s, 0x18)
            s := and(s, or(ptr, ptr))
            s := add(s, s)
        }
    }
}

pragma solidity ^0.8.0;
contract InlineAssembly4 {
    function test(string memory s) public {
        assembly {
            let ptr := add(s, 0x18)
            s := and(s, or(ptr, ptr))
            s := add(s, s)
        }
        s = "";
    }
}


pragma solidity ^0.8.0;
contract InlineAssembly1 {
    constructor() public {
        assembly {
            let ptr := add(0x40, mload(0x40))
            mstore(ptr, 115)
        }
    }
    function test() public pure {
        bytes memory b = <KEY>;
        for (uint i = 0; i < b.length; i++) {
            assembly {
                sstore(i, sload(add(3, i)))
            }
        }
    }
}
