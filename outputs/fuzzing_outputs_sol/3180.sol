pragma solidity ^0.8.0;
contract Contract11Mut5{
    event Fulfilled(address owner, uint256 indexed value);
    uint256 public num;
    function() external payable {
        num = 1;
        num = 2;
    }
    receive() external payable {}
}

pragma solidity ^0.8.0;
contract Contract11Mut6{
    event Fulfilled(address owner, uint256 indexed value);
    uint256 public num;
    modifier FallbackTest() {
            num = 1;
            num = 2;
            _;
    }
    fallback() external payable {
        num = 1;
        num = 2;
    }
}

pragma solidity ^0.8.0;
contract Contract11Mut7{
    event Fulfilled(address owner, uint256 indexed value);
    uint256 public num;
    modifier FallbackTest() {
            num = 1;
            num = 2;
            _;
    }
     receive() external payable {
        num = 1;
        num = 2;
    }
    function() external payable {}
}
