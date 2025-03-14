pragma solidity ^0.8.0;
contract Mutators_2 {
    function test () public {
        assembly {
            mstore(1, 1)
            mstore(0, 1)
            mstore(2, 1)
            mstore(2, 2)
            mstore(1, 2)
            mstore(1, 1)
            mstore(2, 2)
            mstore(1, 1)
            mstore(2, 2)
            mstore(0, 0)
            mstore(0, 0)
            mstore(1, 1)
        }
    }
    function test_2 () public {
        assembly {
            mstore(0, 0)
            mstore(2, 3)
        }
    }
}

pragma solidity ^0.8.0;
import "./Mutators_2.sol";
contract Mutators_3_Lib {
    uint private num;
    function test () public view returns (uint) {
        return num.sub(1);
    }
    function test_2 () public returns (uint) {
        num = 1;
        return num.sub(1);
    }
}

pragma solidity ^0.8.0;
import "./Mutators.sol";
import "./Mutators_3_Lib.sol";
contract Mutators_3 {
    uint public var_1;
    mutated uint public var_2;
    constructor () {
        var_1 = 1;
        var_2 = 2;
    }
    function test () public view returns (uint) {
        uint memory sub = var_1.sub(1);
        return sub;
    }
    function test_2 () public view returns (uint) {
        var_2 = 1;
        uint memory sub = var_2.sub(1);
        return sub;
    }
}
