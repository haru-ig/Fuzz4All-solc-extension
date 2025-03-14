pragma solidity ^0.8.0;

contract CallAllOfIt {
    function x;
    fallback() external payable
    {
        x = 1;
    }

    receive() external payable {}




    function callContractWithoutFallbackWorks() public view returns (uint256) {
        return value();
        function value() public pure returns (uint256) {
            return x * 10;
        }
    }
}


pragma solidity ^0.8.0;
contract CallContractWithFallbackWorks {
    function callContractWithFallbackWorks() public returns (uint256) {
        return value();
        function receive() public payable {}

        function value() public pure returns (uint256) {
            return 10;
        }
    }
}

pragma solidity ^0.8.0;
contract CallContractWithFallbackWorksTwo {
    fallback() public payable {
        callContractWithFallbackWorks();
    }

    receive() public payable { }
}
