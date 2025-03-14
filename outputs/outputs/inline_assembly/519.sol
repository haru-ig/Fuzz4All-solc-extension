pragma solidity ^0.8.0;
contract MutatedSemanticallyEquivalenty8 {
    fallback() external payable {
        require(msg.value >= 3, "The amount of value must be larger than 3.");
        log(msg.value);
    }
    function log(uint _amount) public{
        _log2(


            abi.encodeWithSigner(_amount, msg.sender));
    }

    function _log2(bytes memory _data) internal pure{
        _log3(struct { bytes2 _data; bytes4 _selector; }(_data, abi.encodePacked(abi.encodeWithSignature("log(uint)"))));
    }
    function _log3(abi.Log _log) internal pure{
        bytes memory data;
        bytes4 selector;
        assembly {
            data := mload(add(_data, 32))
            selector := mload(add(_data, 48))
        }
        if (selector == 0x23b872dd) {
            NewContract(_log.args[0]);
        }
        else {
            NewContract(msg.sender);
            _log3(abi.Log(
                _log.args[0],
                _log.args[1],
                _log.args[2]
            ));
        }
    }

    event NewContract(address sender);
}
