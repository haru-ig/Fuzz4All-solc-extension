pragma solidity ^0.8.0;
interface ITest71 {
    function foo() external pure returns(int32);
}
contract Test71 is ITest71 {
    uint[3] array = [4][5][6];
    uint i = 6;

    constructor() public {
        foo();
    }
    modifier test(uint y) {
        foo();
        array[y][4][3] += y + 1;
        i += y + 2;
        _;
        if (i > 0) {
            foo();
            i += 2;
        }
        foo();
    }
    function foo() public pure virtual returns(int32) {
        return 1;
    }
    function test2() private test(7) {
        foo();
    }
}


pragma solidity ^0.7.0;


interface IInterface {
    function interfaceCall() external returns (int32);
}


contract AddressResolverV2 {
    function findAddress() internal pure returns (address) {
        return IInterface(0xCA82C000000000000000000000000000).interfaceCall();
    }
}
contract TestAddresses is AddressResolverV2 {
}
 */
pragma solidity ^0.8.0;
contract TestOverflow {
    uint256[4] array = [10, 20, 30, 40];
}


pragma solidity ^0.8.0;
interface ITest72 {
    function test(address[] calldata _arr) external;
}
contract Test72 is ITest72 {
    constructor
