pragma solidity ^0.8.0;
library SafeMath {
    function add(uint a, uint b) internal pure returns (uint c) {
        c = a + b;
        require(c >= a, "SafeMath: addition overflow");
        return c;
    }
    function sub(uint a, uint b) internal pure returns (uint c) {
        require(b <= a, "SafeMath: subtraction overflow");
        c = a - b;
    }
    function mul(uint a, uint b) internal pure returns (uint c) {
        if (a == 0) return 0;
        c = a * b;
        require(c / a == b, "SafeMath: multiplication overflow");
    }
    function div(uint a, uint b) internal pure returns (uint c) {
        require(b > 0, "SafeMath: division by zero");
        c = a / b;

    }
}

pragma solidity ^0.8.0;
library Test {
    uint constant id = 123;
    modifier function onlyID(uint _id) {
        require(_id == id, "Not ID");
        _;
    }
    event event27(uint _id);
}

pragma solidity ^0.8.0;
contract Test {
    enum Foo { A, B, C, D };
    event event28(uint _id, address _sender, uint256 _amount);
    uint public id;
    constructor () { id = 0; }
    function getAmount(uint _id) public {
        emit event28(_id, msg.sender, 12345678901234.0);
    }
}

pragma solidity ^0.8.0;
contract Test {
    event event29(address _sender, uint _tokenId, Foo _data);
    uint public id;
    mapping(uint => uint) private _amount;
    constructor () {
        _amount[msg.sender] = 123;
        id = 0;
    }
    function getAmount(uint _id, uint _tokenId) public {
        emit event29(msg.sender, _tokenId, Foo(_amount[_tokenId] + 999));
    }
}

pragma solidity ^0.8.0;
contract Test {
    event event30(uint _amount, uint _tokenId, address _sender, uint256 _amountToken, address _operator);
    uint public id;
    mapping(uint => uint) public _
