pragma solidity ^0.8.0;
interface I3b {
    function use() external;
}

pragma solidity ^0.8.0;
interface I4c {
    function use() external;
}

pragma solidity ^0.8.0;
interface I5d {
    function use() external;
}



























contract ConcreteI is AbstractionI {
    constructor () {}
    function use(address x1) public {
    x1.use();
    emit AbstractionUsed(42, "Contract");
    }
    event AbstractionUsed(uint myNumber, string message);
}
contract UseTest{
    function test() returns uint256 {
        return (uint(ABI.decode(abi.encode(I2a(0x1234567890abcdef0)).use()), (uint)));
    }
}
