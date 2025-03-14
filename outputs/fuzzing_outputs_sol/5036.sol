pragma solidity ^0.8.0;
contract Moved {
    function mutate() public pure {
        (uint256, ) = (type(uint256).max,  );
    }
}

pragma solidity ^0.8.0;
contract Caller {
    function mutate(address) public pure {
        (uint256, ) = (type(uint256).max,  );
    }
}
