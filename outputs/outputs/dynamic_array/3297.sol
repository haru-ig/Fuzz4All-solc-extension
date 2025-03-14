pragma solidity ^0.8.0;
interface IUseFunction1 is I {
    function use(string calldata key, bytes4 functionSelector) external;
}

pragma solidity ^0.8.0;
interface IUseFunction3 {
    function use(string memory key, bytes memory functionSelector) external;
}

pragma solidity ^0.8.0;
contract C
{
    address[] public a;

    constructor () {
        a.push(address(this));
        a.push(address(this));
        a.push(address(this));
    }

    event A(uint x);

    function c() external {
        IUseFunction3 i = abi.as(IUseFunction3(address(this)));
        i.use(a[2], "00000000");
        emit A(1);
    }
}
