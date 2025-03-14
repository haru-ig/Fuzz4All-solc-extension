pragma solidity ^0.8.0;
contract Caller3Mutated {
    address payable _addr;
    uint256 _amount;
    uint32 _amount2;
    uint8 _amount3;
    constructor(uint256 _amount) { _addr = payable(msg.sender); _amount = _amount; }
    receive() external payable {
        _addr.transfer(msg.value);
    }
    fallback() external payable {
    }
}

pragma solidity 0.8.0;
contract Caller4 {
    address payable _addr;
    uint256 _amount;
    bytes32 _result;
    uint256 _amount2;
    address payable _addr2;
    constructor(uint256 _amount) { _addr = payable(msg.sender); _amount = _amount; }
    receive() external payable {
        _addr.transfer(msg.value);
    }
    fallback() external payable {
        _addr2.transfer(uint(IERC20(_addr2).totalSupply()));
    }
    function() external {
        _result = IERC20(_addr).transferFrom(_addr, address(this), uint256(100));
        IERC20(_addr4).transferFrom(_addr, address(this), uint256(100));
        IERC1155(_addr5).mint(_addr5, uint256(100));
        IERC721(_addr6).mint(msg.sender, uint(100));
        IERC721(_addr7).mint(_addr7, uint(100));
    }
}
