pragma solidity ^0.8.0;
contract Mutater1 is Mutater2 {
    receive() external payable {
        if (count > 0 && count < 2) {
            count = 0;
        } else {
            count = (count > 1)? 0 : ++count;
        }
    }
}

pragma solidity ^0.8.0;
contract Mutater3 {
    uint32 count;
    uint32 internal state;
    receive() external payable {
        if (address(this).balance < (1 ether)) {
            state = count;
            count = (count > 1)? count : (count > 3)? 2 : ++count;
            (state, count);
        } else {
            state = 0;
        }
    }
}

pragma solidity >=0.5;
contract Mutater4 {
    mapping(address => uint256) private _totalSupply;
    uint256 _transferred;
    function getTransfers() public view returns (uint256 _transferred) {
        return _transferred;
    }
    function() external payable {
        _transferred++;
    }
}

pragma solidity ^0.8.0;
contract Mutater5 {
    uint32 internal state;
    uint32 internal totalSupply;
    receive() external payable {
        uint32 i = (state > 1)? 1 : ++state;
        totalSupply += (i + i);
    }
}
