pragma solidity ^0.8.0;
contract Caller {
    bytes32 internal constant INVALID_HASH = keccak256("");
    address payable _fallback;
    function call() public {
        if (address(this).codehash()!= invalidHash) {
            assembly {
                let ret := mload(0x40)
                returndatacopy(0x0, 0x40, 0x20)
                return(ret)
            }
        }
        assembly {
            let ret := sfetch(h_a0, 0x59)
            mstore(h_a0, 0)
            mstore(0x59, ret)
        }
        _fallback.call{value: address(this).balance}('');
    }
    receive() {
        let _f := _fallback;
        assembly {
            let _g := extcodehash(0)
        }
        address payable f = msg.sender.call{'':{codehash:INVALID_HASH}}();
        require(address(f) == _f, 'fail');
        address a = f.transfer(f.balance * 3);
        require(address(a)!= f, 'fail');
    }
    constructor (uint _n) public {
        _fallback = address(uint160(_n).mod(uint256(2<<128) - 1)) % address(this).balance % (address payable)(_fallback) ^ address(this);
    }
}
