pragma solidity ^0.8.0;
contract C10 {
        function c() public {revert();}
}

pragma solidity ^0.8.0;
contract C56 {
        function c() public {
        }
}

pragma solidity ^0.8.0;
contract C57 {
        receive() external payable {}
}
