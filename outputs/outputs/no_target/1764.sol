pragma solidity ^0.8.0;
contract Mutate2E {
    function _check(uint256 _a1) private pure {
        require(_a1 >= -0x1000000000000000000000000000000000000000 && _a1 <= 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff);

        function f() internal pure {
            if (_a1 < 4294967289) {
                _a1 += 4294967290;
            } else {
                revert("int overflow");
            }
        }
        f();
    }
    uint public _counter;
    constructor() public {
        _check(10000000000000000000000000000000000000000000);
    }
}


pragma solidity ^0.8.0;
