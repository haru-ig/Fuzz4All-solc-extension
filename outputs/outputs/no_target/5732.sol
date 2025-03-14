pragma solidity ^0.8.0;
contract Bar {
    uint y;
    constructor() {
        x = 1;
        bar1(bar2());
    }
    function bar2(): uint24 {
        while (true){
            baz();
            _doNotRevert();
        }
    }
    receive() external payable {}
    function baz(): int24 {
            return x;
    }
}
contract Foo {
    uint x;
    constructor() {

        unchecked {
            uint256 x;

            x = x + 1;
        }
    }
    function bar(): uint {
        unchecked {
            uint256 x;
            uint256 _;
            while (true) {
            x = x + 1;
            }
        }
        return x;
    }
    receive() external payable {}
}
