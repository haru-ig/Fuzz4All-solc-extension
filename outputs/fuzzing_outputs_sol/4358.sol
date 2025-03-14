pragma solidity ^0.8.0;
contract CallerFallback {
    function fallback() internal {
        (bool success, ) = address(this).call{value: 12}("");
        require(success);
    }
}

pragma solidity ^0.8.0;
contract CallerLegacy {

    address payable private _owner;
    constructor() {
        _owner = msg.sender;
    }
    function owner() public view returns (address) {
        return _owner;
    }


    function() public payable {}
}
