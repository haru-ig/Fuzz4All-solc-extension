pragma solidity ^0.8.0;
contract Caller{
    contract SimpleCall{
        function call(address target) external payable {
            target.transfer(msg.value);
        }
    }

    fallback function() external payable {}
}
