pragma solidity ^0.8.0;
contract MutateAssembly7 {
    function test() public view {
        string memory e = "1";
        assembly {
            let ptr := mload(0x0)
            let result := and(ptr, ptr)
            result := and(result, ptr)
            ptr := mload(0x0)
            mstore(0x0, result)
        }
    }
}

pragma solidity ^0.8.0;
contract MutateAssembly10 {
    function test() public view {
        string memory e = "1";
        assembly {
            let ptr := mload(0x0)
            e := and(ptr, ptr)
            mstore(0x0, e)
        }
    }
    function test2() public view {
        string memory e = "1";
        address a = 0xFE000000000000000000000000000000000000;
        assembly {
            let ptr := mload(0x0)
            ptr := ptr.add(1)
            let result := and(ptr, ptr)
            ptr := mload(0x0)
            mstore(0x0, result)
        }

        require(a == e);
    }
}
pragma solidity ^0.8.0;
interface ILibrary {
    function add2(uint _x) external view returns (uint);
    function divide3(uint _x) external view returns (uint[2]);
}
pragma solidity ^0.8.0;
interface ILibrary2 {
    function sqrt(uint _x) external view returns (uint);
    event Won();
}
pragma solidity ^0.8.0;
interface ILibrary3 {
    function div2(uint _x, uint _y) external view returns (uint);
    function mul2(uint _x, uint _y) external view returns (uint);
    function sub2(uint _x, uint _y) external view returns (uint);
    event Won();
}
pragma solidity ^0.8.0;
contract MutateAssembly11 {





    function test() public view {
        address addr = 0xFE0000000000000000000000000000000000000;
        ILibrary memory library1 =
