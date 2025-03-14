pragma solidity ^0.8.0;
contract Caller {

    function sendEther() public {
        Mutator _mutator = new Mutator();
        address _contractAddress = address(_mutator);

        _mutator._dummyReceive();

        _contractAddress.call{value: 2 ether}('');
    }

    function _dummyReceive() private pure {}
 }








pragma solidity ^0.8.0;
contract Mutator {

    event Received(uint dummy);

    function _dummy_fallback_receive(uint _dummy, bytes memory _bytes) public pure returns (bytes4 result) {
        if (_dummy == 2342) {
            result = 0xf7eecd9f;
        } else {
            result = 0xf8c770ea;
        }
    }
    function _dummyReceive() public pure returns (uint) {
        address _contractAddress = address(this);



        bytes memory _bytes;
        bytes4 result;
        assembly {

            result := calldatacopy(0, _bytes)
            if returndatacopy(0, _bytes)!= _bytes {
                revert(0, _bytes)
            }
            _contractAddress._dummy_fallback_receive(msg.value, returndatasize())
        }
        return uint(result);
    }
}
