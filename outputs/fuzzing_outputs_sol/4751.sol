pragma solidity ^0.8.0;
contract Seller {
    constructor() {
    }
    function doSomething(uint256 _x, uint256 _y) public pure {
        require(_x >= 1);
    }
}

pragma solidity ^0.8.0;
contract Seller {
    constructor() {
    }
    function doSomething(uint256 _x, uint256 _y) public pure returns(uint256) {
        require(_x >= 1);
    }
}

pragma solidity ^0.8.0;
contract Caller {
    constructor() {
    }
    function doSomething(address _contractAddress) public pure {
        bytes memory emptyData = "";
        (bool success, ) = destinationContractAddress.call{value: 10}(emptyData);
        require(success);
    }
}
