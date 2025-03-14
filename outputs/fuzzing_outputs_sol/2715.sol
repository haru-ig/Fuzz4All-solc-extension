pragma solidity ^0.8.0;

pragma solidity ^0.8.0;
contract Simple {
    receive() payable { }
}
contract Simple {
    fallback () internal {}
}

pragma solidity ^0.8.0;
contract PayableFallback {
    function fallback() public payable { revert("Fallback not called"); }
}
