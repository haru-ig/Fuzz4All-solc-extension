pragma solidity ^0.8.0;
contract Modifiers {
    uint constant x = 1;

    function test (uint x) public {
        assembly {
            if gt(x, 99) {
                mstore(0x50, x)
            }
            result := 0
            return(nop, nop, nop, mload(0x50), result)
        }
    }
}

contract NotSafeExample {

    uint constant x = 1;
    modifier restricted() {
        require(x > 0);
        _;
    }
    function restrictedTest() restricted public {
        x += 1;
    }
}

contract NotSafeExample {

    uint constant x = 1;
    modifer restricted(){
        require(x > 0);
        _;
    }
    function restrictedTest() restricted public {
        x += 1;
    }
