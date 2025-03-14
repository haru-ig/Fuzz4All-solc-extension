pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract MixedContactsExample28 {
    uint public i;
    bool testBool;
    function increaseByOne(uint d) public {
        if(testBool) {
            increaseBy100(10);
        } else {
            increaseBy500(d);
        }
    }
    function increaseBy100(uint b) public {
        i += 100;
    }
    function increaseBy500(uint a) public {
        i += 500;
    }
    function increaseBy5000(uint j) public {
        i += 5000;
    }
    function increaseBy800(uint e) public {
        i += 800;
    }
    function changeContract(address e) public {
        uint len = 23;
        assembly {
            let addr := add(e, 0x20)
            i := add(i, mload(addr))
        }
    }
    function changeFunc(uint f) public {
        i = f;
    }
    function changeType(uint g) public {
        i = g;
    }
}
