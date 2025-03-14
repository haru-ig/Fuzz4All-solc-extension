pragma solidity ^0.8.0;

contract Contract11Mut is Contract11Mut{
    uint256 public num;

    constructor() {
        num = 42;
    }

    function test_add() public {
        num += 1;
    }

    function test_decrement() public {
        if (num > 1)
            num -= 1;
        else
        if (msg.data.length > 0)
            msg.sender.transfer(msg.data.length);
    }
}

contract Contract11Mut08 is Contract11Mut{
    uint256 public num;

    constructor() {
        num = 42;
    }

    function test_add0() public {
        num += 1;
    }

    function test_decrement0() public {
        if (num > 1)
            num -= 1;
        else
        if (msg.data.length > 0 && num == 3)
            msg.sender.transfer(msg.data.length);
    }
}


pragma solidity ^0.8.0;
library Contract11Mut0X{
    uint256 public num;

    function CallLowLevel(address _contract);
}

contract Contract11Mut0X is Contract11Mut{
    uint256 public num;

    constructor() {
        num = 42;
    }

    function test_add() public {
        (bool success, ) = address(this).call(abi.encodeWithSelector(address(this).test_add.selector));
        assert(success && num == 43);
    }

    function test_decrement() public {
        (bool success, ) = address.call(abi.encodeWithSelector(Contract11Mut0X.CallLowLevel.selector));
        assert(success && (num == 42 || num == 2));
    }
}

contract Contract12Mut{
    event Fulfilled(address owner, uint256 indexed value);
    address public owner;
    uint256 public num;
    function setOwner(address _o) public {owner = _o; setNum(0);}
    function setNum(uint256 _n) public {num = _n;}
    function getNumber() public view returns(uint) {return num;}
    fallback() external {
        address[] memory _from;
        _from.push(msg.sig.sender);
        _from.push(owner);
         emit Fulfilled(_from[0], _from[1], num);
    }
}

pragma solidity ^0.8.0;
library Contract12Mut0X{
    function CallLowLevel(address _contract, uint _x);
