pragma solidity ^0.8.0;
contract ContractY {



    contract ContractB {

        function __Constructor(bytes4 sig) internal {
            assert(sig == _setSig && address(this) == _owner);

        }

        function _setSig(bytes4 sig) internal {
            _setSig = sig;
            assert(sig == _setSig);
            _owner = msg.sender;
        }
        uint256 _owner;
        bytes4 private _setSig;
    }
    bytes4 private _setSig;
    constructor(bytes4 sig) internal {
    }
    function getOwner() public view returns (address) {
        return _owner;
    }
    function setSig(bytes4 sig) public {
        _setSig = sig;
    }
    function sig(bytes4 sig) public pure {
        assert(sig == _setSig);
    }
}
