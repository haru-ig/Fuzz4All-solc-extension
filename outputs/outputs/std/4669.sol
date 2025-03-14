pragma solidity ^0.8.0;
assembly {
    contract D {
        function g(address) internal pure returns(uint64) {
            return 9007199254740991;
        }
    }
}
contract E {
    uint[] array;
    uint result;

    constructor() {
        result = D.g(address(C()));
        array = new uint[](3);
    }

    function f() public pure {
        revert("revert");
        array[0] = 100;
    }

    function g() public pure {
        revert(array[0] + "fail");
    }

    function h() public pure {
        array[1] = 200;
        array[2] = 300;
        result = D.g(address(this));
    }

    function b() public pure {
        result = D.g(address(this));
    }
}
