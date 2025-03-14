pragma solidity ^0.8.0;
contract S {
    function fallback() public pure returns (uint, uint) {
        return 1, 1;
    }
}
contract Call {
    function callPayable(address payable dst, uint w) public {
        dst.call{value: w}("");
    }
}

pragma solidity ^0.8.0;
contract Call {
    function callPayable(address payable dst, uint w) public {
        dst.call{value: w}("");
    }


    contract Caller {
        function fallback() public pure {
            revert("test");
        }
    }
}
