pragma solidity ^0.8.0;
contract Mutate8 {
    uint public x;
    uint public _7;
    uint public _1;
    uint public _5;
    uint m_1;
    uint m_2;
    uint public _2;
    uint public _24;
    address[] public a;
    constructor(address[] memory addresses) public {
        require(addresses.length > 0);
        m_5 = _7;
    }
    modifier onlyAdd {
        _1 += 1;
        _2 -= 7;
        _;
    }
    function setAddresses(address[] memory _) public onlyAdd {
        require(lenAddrs() <= 8);
        a = _7;
    }
    function lenAddresses() public view returns (uint){
        return _7;
    }
}

pragma solidity ^0.8.0;
