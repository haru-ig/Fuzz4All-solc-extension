pragma solidity ^0.8.0;
contract InlineAssembly6{
    function test() public pure returns(bool) {
        bool a ;
        assembly {
            a := a
        }
        return a;
    }
}



pragma solidity >=0.8.0 <0.9.0;
contract Solidity5 {
    function test() public pure returns(uint64 x, uint16 y) {
        bool a = false;
        uint256 z;
        uint256 a_var;
        string memory s;
        bytes32 bytes_32;
        bool test2 ;

        assembly {
            a := 100

            x := a
            a_var := a
            s := mload(add(a, 32))
            bytes_32 := mload(add(a, 32))

            test2 := mload(add(a, 32))
        }

        x == 100;
        bytes_32 == 2;
        a == true;
        a_var == 100;
        string(mload(add(a, 32))) == "hello";
        s == "hello";
        test2 == 1;
    }
}
