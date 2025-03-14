pragma solidity ^0.8.0;
contract Zero4  {
    function getAddress1() public pure returns (address) {
        return 0x0;
    }
    function getValue1(bool vBool) public view returns (uint) {
        if(vBool) {
            return uint(0) - uint(uint0);
        }
        return uint(1) + uint13 - uint0 - uint1;
    }
    function getValue2(bool vBool) public pure returns (uint8) {
        require(vBool == true, 'Zero4: vBool should be true');
        return uint8(uint0) + uint0 - uint1;
    }
    function getValue3() public pure returns (address) {
        return 0x0;
    }
    function getValue4() public pure returns (uint) {
        return uint(9800000000000000000000000000000000000) - uint1;
    }
    function getValue5() public pure returns (bytes15) {
        return bytes15(bytes8(bytes7(bytes6(bytes5(bytes4(bytes3(bytes2(bytes1), bytes7, bytes6, bytes5, bytes4, bytes3, bytes2, bytes1), bytes3, bytes2, bytes1), bytes15, bytes14, bytes13, bytes12, bytes11, bytes10, bytes9, bytes8, bytes7, bytes6, bytes5, bytes4, bytes3, bytes2, bytes1)))));
    }
