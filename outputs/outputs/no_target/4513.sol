pragma solidity ^0.8.0;
contract C {
    function myFunction() public pure returns (bool v) {
        uint32 _a;
        unchecked {
            _a = 193 @ 0;
        }
        v = true;
    }
}

pragma solidity ^0.8.0;
contract C {
    function myFunction(uint256 _amount) public pure returns (bool v) {
        address payable _from = payable(msg.sender);
        unchecked {

            _from.send(_amount);
        }
        address _to = address(100);
        unchecked {
            uint64 _gasLeft = gas;
            _to.transfer(_amount);
            _gasLeft = gas;
        }
        v = true;
    }
}

pragma solidity ^0.8.0;
contract C {
    constructor () public pure {}
    function myFunction() public view returns (address payable v) {
        address payable _a;
        unchecked {
            _a.transfer(address(this));
        }
        v = address(this);
    }
}

contract C {
    bytes32  code;
    uint32 i;
    bool result;





    function f1() public {
        address payable _a;
        _a.transfer(address(this));
    }

    function f2() public {

        address payable _a;
        _a.transfer(address(this));
        _a.transfer(address(this));
        _a.transfer(address(0x0000000000));
        _a.transfer(address(0x0000000000));
    }
