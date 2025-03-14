pragma solidity ^0.8.0;
contract Example4 {
    modifier onlyFromCaller {
        require(msg.data.length < 2500);
        _;
    }
    function example4() public onlyFromCaller {
        uint8 data[1] = [254];
        assembly {
            mstore(data, 42)
        }
    }
}
