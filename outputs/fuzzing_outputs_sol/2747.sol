pragma solidity ^0.8.0;
contract Caller3 {
    function fallback() public payable {}
}

pragma solidity ^0.8.0;
contract Caller3 {
    receive() payable {
        return;
    }
}

pragma solidity ^0.8.0;
contract Caller4 {
    function _fallback() private payable  {
        _;
    }

}
