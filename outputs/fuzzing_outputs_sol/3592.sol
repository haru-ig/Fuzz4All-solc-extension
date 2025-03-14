pragma solidity ^0.8.0;
contract MutateSemantic5WithCaller {
    event Evt(uint a);
    function modifyB(uint256 x) public payable {
        uint256 y = 10;
        emit Evt(y + x);
    }
}

pragma solidity ^0.8.0;
contract CallERC165 {

    constructor() {
        address addr = msg.sender;
        (bool success,) = addr.call{value: msg.value}("");
        assert(success);
    }

    function isInterfaceSupported(bytes4 interfaceid)
        public
        pure
        returns (bool)
    {
        return true;
    }
}

pragma solidity ^0.8.0;
contract CallERC1820 {
    constructor() {
        address addr = msg.sender;
        (bool success,) = addr.call{value: msg.value}("");
        assert(success);
    }

    function isInterfaceSupported(bytes4 interfaceid)
        public
        pure
        returns (bool)
    {
        return true;
    }
}
