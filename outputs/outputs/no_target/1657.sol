pragma solidity ^0.8.0;
contract Semantic0015 {
    function f(uint256 input) public f(uint256 input) {}
}

pragma solidity ^0.8.0;
contract Semantic0015 {
    function f(uint256 input) public f(uint32 input) { revert(); }
}

pragma solidity ^0.8.0;
contract Semantic0015 {
    address a;
    function a() public {
        {
            emit e(a);
            {}
        }
        a.call{value: 10}(new assembly {
                let _a := mload(0)
                let _b := calldatacopy(_a, 0, 0)
                let _c := calldataload(_a, _b)
                {}
            });
    }
    fallback() external {}
}

pragma solidity ^0.8.0;
contract Semantic0015 {
    function f(uint256 input) public f(uint1024 input) {}
}
pragma solidity ^0.8.0;
contract Semantic0015 {
    function f(uint256 input) private {
        {}
        {
            throw;
        }
    }
}
