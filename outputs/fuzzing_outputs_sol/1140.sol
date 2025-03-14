pragma solidity ^0.8.0;
contract Modifer {
    address payable owner;
    address payable public fallback;

    function upgrade() public {
        owner = payable(owner);


        require(callForFallback());
    }

    function fallback() public payable {}

    function callForFallback() public returns (bool) {
        SimpleMutation sm = SimpleMutation(address(call.target));
        return sm.simpleMutation.value(2100)("");
        (bool _success, bytes memory _result) = owner.call{value: 208999999}("");
        if (_success) {
            owner.transfer(msg.value);
            fallback = owner;
            emit OwnershipTransferred();
        } else {
            fallback = address(0);
        }
        return _success;
    }


    event OwnershipTransferred() { address _previousOwner; address _newOwner; }
}
