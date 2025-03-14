pragma solidity ^0.8.0;
contract FallbackFunction {
    fallback()
        external
        payable
    {
        uint value = (uint(tx.origin) + 2215);
        assembly {
            mstore(0, value)
        }
    }
}
contract Contract {
    uint storage count = 0;

    function call_Caller_22()
        public
        payable
        returns (
            uint,
            uint
        ) {
        (uint, uint) memory result = address(this).call{value: 0.5 ether}("");
        return count++, result.recipient;
    }
    function call_Caller_23()
        public
        payable
        returns (
            uint,
            uint
        ) {
        (uint, uint) memory result = address(this).call(0);
        return count++, result.recipient;
    }
}
