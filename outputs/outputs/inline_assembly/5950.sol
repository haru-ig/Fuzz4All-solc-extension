pragma solidity ^0.8.0;


contract Example {
    function method() public {

        function subtract(address add1, address add2) public pure returns (uint) {
            return add2.value(1 ether).sub(add1);
        }

        uint result = subtract(address(this), address(this));
        assert(result == 1);
        uint result2 = subtract(address(this), address(0));
        assert(result2 == 0);
    }
}
