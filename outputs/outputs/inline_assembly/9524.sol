pragma solidity ^0.8.0;
contract MyContract {
    function foo(address x) pure public {
        function bar(uint128 x) pure pure returns (bool) {
            return true;
        }
        assembly {
            bar(mload(add(x, mload(0x20))))
        }
    }
}
contract MyContract {
    function foo(address x) pure public {
        function bar(uint128 x) pure pure returns (bool) {
            return true;
        }
        assembly {
            bar(mload(add(x, 0x40)))
        }
    }
}
