pragma solidity ^0.8.0;
mapping(uint256 => uint8) private _lookup;
function lookup(uint256 _value) public returns(uint8) {
    if (_value > uint256(_lookup.length)) return 0;
    return _lookup[_value];
}
contract LookupMutatorExample {
    function() external payable {

        lookup(bytes2(1));
    }
}

pragma solidity ^0.8.0;
contract RevertExample {
    function myCall() internal returns (uint) {

        revert();
    }
}

pragma solidity ^0.8.0;
contract WithdrawExample {

    receive() external payable {}
    function myCall() return (uint) {

        revert();
    }
    uint8 public withdrawn;
    constructor() {


        withdrawn = 0;
    }
}

function() payable {}
