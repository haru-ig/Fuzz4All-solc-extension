pragma solidity ^0.8.0;
contract Modifiable {
    function modify() public pure returns (bool) {... }
}


pragma solidity ^0.8.0;
contract Bug519 {
    function bug519() external payable {
        call.fallback();
    }
    receive () payable { throw; }
}
contract Bug520 {
    function bug520() external payable returns (bool) {
        call.fallback();
    }
    receive () payable { throw; }
}
contract Bug521 {
    function bug521() external payable {
        (bool success, ) = call.fallback{value : balance}();
        assert(success);
    }
    receive () payable { throw; }
}
