pragma solidity ^0.8.0;
contract ArrayMutated {
    uint internal arrayOfUints_current;
    bytes internal arrayOfBytes_current;
    mapping (uint => uint[]) private mappingOfArraysToSixElements;
    mapping (uint => address[]) private mappingOfArraysToAddresses;
    mapping (uint => int256[]) private mappingOfArraysToInt256s;
    uint private _maxUint;
    uint private _maxAddress;
    mapping (uint => bool) private mappingOfArraysToStrings;
    mapping (uint => bool) private mappingOfArraysToHasSixElements;
    address private _owner;
}








pragma solidity ^0.8.0;
contract ArrayStrings {
    bytes4 private constant FOO_METHOD = 0x13b959c3;
    uint internal arrayOfBytes_current;
    mapping (address => bool) private _toArrayMapping;
    function toArray(bool[] memory __fromArray, bytes4 _method)
        public
        pure
        returns (bool[][] memory __toArray)
    {
        __toArray = __fromArray;
    }

    bool public _fromArrayString1;

    function () public payable {
        _fromArrayString1 = true;
        _transfer();

        assembly {
            switch __method {
                0x13b959c3 {
                    revert(0, 0)
                }
                nop()
            }
        }
    }

    function _transfer() internal {
        bool _fromArrayString = __isFromArrayString();
        require(_fromArrayString == _fromArrayString1, "Strings do not match");
    }

    function __isFromArrayString() internal returns(bool) {
        return ArrayStrings.verifySignature(keccak256("hello"));
    }
}

pragma solidity ^0.8.0;
contract ArrayMutatedStrings {
    uint internal arrayOfUints_current;
    mapping (uint => address[]) private mappingOf
