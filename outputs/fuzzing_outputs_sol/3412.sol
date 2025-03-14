pragma solidity ^0.8.0;
contract C {
    function f() external pure calldata { }
}

pragma solidity ^0.8.0;
contract Caller {
    function h() external pure calldata { }
    function f() payable {
        msg.sender.call{value: 2**256-3}("");
    }
}
