pragma solidity ^0.8.0;
contract Old {
    function old(uint _a) pure public {
        address memory fallback = address(new Old());
        fallback.call{value : 10 ether}();
    }
}
