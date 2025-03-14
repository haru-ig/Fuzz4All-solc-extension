pragma solidity ^0.8.0;
contract Mutator {
    function testMethod(int v) public pure {
        assembly {
            v := v + 1
        }
    }
}
contract Mutator2{
    function testMethod(int v) public pure {
        assembly {
            v := 1
            v := v + 1
        }
    }
}


pragma solidity ^0.8.0;
contract Mutator2 {
    function testMethod(int v) public pure {
        assembly {
            v := 1
            v := v + 1
        }
    }
}
