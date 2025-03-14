pragma solidity ^0.8.0;
contract Caller3 {
    receive() public { revert('Fallback not called'); }
    fallback() public { revert('Fallback not called'); }
    function fallback() public { revert('Fallback not called'); }
    function payableFallback() public { revert('Fallback not called'); }
    function receive() public { revert('Fallback not called'); }
}

pragma solidity ^0.8.0;
contract Caller4 {
    function receive() public payable { revert("Fallback not called"); }
    fallback() public { revert("Fallback not called"); }
    function fallback() public { revert("Fallback not called"); }
    function payableFallback() public { revert("Fallback not called"); }
    receive() public payable { revert("Fallback not called"); }
}
