pragma solidity ^0.8.0;
contract InlineAssembly6 {
    string memory s;
    function test() public view returns(string memory) {



        s := mload(0x00);
        return s;
    }
}

pragma solidity ^0.8.0;
contract InlineAssembly7 {

    function test() public view returns(uint) {
        assembly {

            s := mload(0x00);
            s := add(s, 5)
            mstore(0x00, s)
        }
        return s;
    }
}

pragma solidity >=0.6.0 ^0.8.0;
contract InlineAssembly8 {
    function test() public view returns(uint32) {
        return uint(InlineAssembly7.test());
    }
}
